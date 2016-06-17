.class public final Ler;
.super Landroid/view/View$AccessibilityDelegate;
.source "AccessibilityDelegateCompatJellyBean.java"


# instance fields
.field private synthetic a:Les;


# direct methods
.method public constructor <init>(Les;)V
    .locals 0
    .parameter

    .prologue
    .line 47
    iput-object p1, p0, Ler;->a:Les;

    invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    return-void
.end method


# virtual methods
.method public final dispatchPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 51
    iget-object v0, p0, Ler;->a:Les;

    iget-object v0, v0, Les;->a:Lel;

    invoke-virtual {v0, p1, p2}, Lel;->b(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    return v0
.end method

.method public final getAccessibilityNodeProvider(Landroid/view/View;)Landroid/view/accessibility/AccessibilityNodeProvider;
    .locals 1
    .parameter

    .prologue
    .line 87
    invoke-static {p1}, Lel;->a(Landroid/view/View;)Ljl;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Ljl;->a:Ljava/lang/Object;

    :goto_0
    check-cast v0, Landroid/view/accessibility/AccessibilityNodeProvider;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 56
    iget-object v0, p0, Ler;->a:Les;

    iget-object v0, v0, Les;->a:Lel;

    invoke-virtual {v0, p1, p2}, Lel;->d(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 57
    return-void
.end method

.method public final onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 61
    iget-object v0, p0, Ler;->a:Les;

    iget-object v0, v0, Les;->a:Lel;

    new-instance v1, Ljb;

    invoke-direct {v1, p2}, Ljb;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, p1, v1}, Lel;->a(Landroid/view/View;Ljb;)V

    .line 62
    return-void
.end method

.method public final onPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 66
    invoke-static {p1, p2}, Lel;->c(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 67
    return-void
.end method

.method public final onRequestSendAccessibilityEvent(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 72
    iget-object v0, p0, Ler;->a:Les;

    iget-object v0, v0, Les;->a:Lel;

    invoke-virtual {v0, p1, p2, p3}, Lel;->a(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    return v0
.end method

.method public final performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 92
    iget-object v0, p0, Ler;->a:Les;

    iget-object v0, v0, Les;->a:Lel;

    invoke-virtual {v0, p1, p2, p3}, Lel;->a(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method public final sendAccessibilityEvent(Landroid/view/View;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 77
    invoke-static {p1, p2}, Lel;->a(Landroid/view/View;I)V

    .line 78
    return-void
.end method

.method public final sendAccessibilityEventUnchecked(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 82
    invoke-static {p1, p2}, Lel;->a(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 83
    return-void
.end method
