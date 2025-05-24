import os
import sys
from libretranslate.main import main

if __name__ == "__main__":
    # LibreTranslate'i çalıştır
    sys.argv = [
        "libretranslate",
        "--host", "0.0.0.0",
        "--port", os.environ.get("PORT", "8080"),
        "--load-only", "en,tr"
    ]
    main()
