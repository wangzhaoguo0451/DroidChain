.class public final Lep;
.super Landroid/view/View$AccessibilityDelegate;
.source "AccessibilityDelegateCompatIcs.java"


# instance fields
.field private synthetic a:Leq;


# direct methods
.method public constructor <init>(Leq;)V
    .locals 0
    .parameter

    .prologue
    .line 46
    iput-object p1, p0, Lep;->a:Leq;

    invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    return-void
.end method


# virtual methods
.method public final dispatchPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 49
    iget-object v0, p0, Lep;->a:Leq;

    iget-object v0, v0, Leq;->a:Lel;

    invoke-virtual {v0, p1, p2}, Lel;->b(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    return v0
.end method

.method public final onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 54
    iget-object v0, p0, Lep;->a:Leq;

    iget-object v0, v0, Leq;->a:Lel;

    invoke-virtual {v0, p1, p2}, Lel;->d(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 55
    return-void
.end method

.method public final onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 59
    iget-object v0, p0, Lep;->a:Leq;

    iget-object v0, v0, Leq;->a:Lel;

    new-instance v1, Ljb;

    invoke-direct {v1, p2}, Ljb;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, p1, v1}, Lel;->a(Landroid/view/View;Ljb;)V

    .line 60
    return-void
.end method

.method public final onPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 64
    invoke-static {p1, p2}, Lel;->c(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 65
    return-void
.end method

.method public final onRequestSendAccessibilityEvent(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 70
    iget-object v0, p0, Lep;->a:Leq;

    iget-object v0, v0, Leq;->a:Lel;

    invoke-virtual {v0, p1, p2, p3}, Lel;->a(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    return v0
.end method

.method public final sendAccessibilityEvent(Landroid/view/View;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 75
    invoke-static {p1, p2}, Lel;->a(Landroid/view/View;I)V

    .line 76
    return-void
.end method

.method public final sendAccessibilityEventUnchecked(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 80
    invoke-static {p1, p2}, Lel;->a(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 81
    return-void
.end method
