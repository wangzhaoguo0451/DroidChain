.class public final Lhgr;
.super Lhgq;
.source "LenovoSecurityInstaller.java"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 23
    invoke-direct {p0}, Lhgq;-><init>()V

    .line 25
    sget-object v0, Lham;->f:Lham;

    iget-object v0, v0, Lhal;->d:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 27
    sget v1, Lcom/wandoujia/ripple_framework/R$string;->app_auto_install_install:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lhgr;->a:Ljava/lang/String;

    .line 28
    sget v1, Lcom/wandoujia/ripple_framework/R$string;->app_auto_install_done:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lhgr;->b:Ljava/lang/String;

    .line 29
    sget v1, Lcom/wandoujia/ripple_framework/R$string;->app_auto_install_lenovo_security_success:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lhgr;->c:Ljava/lang/String;

    .line 30
    sget v1, Lcom/wandoujia/ripple_framework/R$string;->app_auto_install_lenovo_security_change_permission:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lhgr;->d:Ljava/lang/String;

    .line 32
    return-void
.end method


# virtual methods
.method public final a(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/String;)Z
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 50
    const/4 v0, 0x0

    .line 52
    iget-object v1, p0, Lhgr;->c:Ljava/lang/String;

    invoke-static {p1, v1}, Lhgd;->a(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 54
    iget-object v2, p0, Lhgr;->d:Ljava/lang/String;

    invoke-static {p1, v2}, Lhgd;->a(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 57
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 59
    :cond_0
    iget-object v1, p0, Lhgr;->b:Ljava/lang/String;

    invoke-static {p1, v1}, Lhgd;->a(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 60
    invoke-static {v0}, Lhgd;->a(Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    .line 61
    const/4 v0, 0x1

    .line 62
    goto :goto_0

    .line 66
    :cond_1
    return v0
.end method

.method public final d(Landroid/view/accessibility/AccessibilityNodeInfo;)Z
    .locals 3
    .parameter

    .prologue
    .line 37
    const/4 v0, 0x0

    .line 39
    iget-object v1, p0, Lhgr;->a:Ljava/lang/String;

    invoke-static {p1, v1}, Lhgd;->a(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 40
    invoke-static {v0}, Lhgd;->a(Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    .line 41
    invoke-static {}, Lhgd;->a()V

    .line 42
    const/4 v0, 0x1

    .line 43
    goto :goto_0

    .line 45
    :cond_0
    return v0
.end method
