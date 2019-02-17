const MATCH_THRESHOLD = 2;
const SELECTORS = [
  '.doctype-article', // ABC
  '.macaw-item', // BBC
  '.sparrow-item', // BBC
  '.article' // Daily Mail
];

const termDetectRegex = /\b(duchess|harry|kate|markle|meghan|middleton|prince|queen|royal|willam)/i;

function detectArticles() {
  return [...document.querySelectorAll(SELECTORS.join(','))].filter((node) => {
    if (node.dataset.royalFlush)
      return false;

    const matches = (node.textContent.match(termDetectRegex) || []).length;
    return matches >= MATCH_THRESHOLD;
  });
}

function hideArticle(node) {
  node.style.filter = 'blur(8px)';
  node.style.opacity = '0.3';
  node.dataset.royalFlush = true;
}

const detectAndHide = () => detectArticles().forEach(hideArticle)

if (! window._royalFlushInit) {
  setInterval(detectAndHide, 1000);
  detectAndHide();
  window._royalFlushInit = true;
}
