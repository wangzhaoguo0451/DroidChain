.class public Lhgq;
.super Ljava/lang/Object;
.source "LenovoInstaller.java"

# interfaces
.implements Lhgm;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;

.field private final f:Ljava/lang/String;

.field private final g:Ljava/lang/String;

.field private final h:Ljava/lang/String;

.field private final i:Ljava/lang/String;

.field private final j:Ljava/lang/String;

.field private final k:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private l:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lhgq;->l:Ljava/util/Set;

    .line 40
    const-string v0, "com.lenovo.safecenter.install.InstallerActivity"

    iput-object v0, p0, Lhgq;->a:Ljava/lang/String;

    .line 41
    const-string v0, "com.lenovo.safecenter.install.InstallAppProgress"

    iput-object v0, p0, Lhgq;->b:Ljava/lang/String;

    .line 42
    const-string v0, "com.android.packageinstaller.PackageInstallerActivity"

    iput-object v0, p0, Lhgq;->c:Ljava/lang/String;

    .line 43
    const-string v0, "com.lenovo.safecenter.defense.fragment.install.InstallInterceptActivity"

    iput-object v0, p0, Lhgq;->d:Ljava/lang/String;

    .line 46
    sget-object v0, Lham;->f:Lham;

    iget-object v0, v0, Lhal;->d:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 48
    sget v1, Lcom/wandoujia/ripple_framework/R$string;->app_auto_install_lenovo_no_perm:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lhgq;->f:Ljava/lang/String;

    .line 49
    sget v1, Lcom/wandoujia/ripple_framework/R$string;->app_auto_install_lenovo_perm:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lhgq;->g:Ljava/lang/String;

    .line 50
    sget v1, Lcom/wandoujia/ripple_framework/R$string;->app_auto_install_lenovo_install_success:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lhgq;->h:Ljava/lang/String;

    .line 51
    sget v1, Lcom/wandoujia/ripple_framework/R$string;->app_auto_install_lenovo_pass_le_security:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lhgq;->i:Ljava/lang/String;

    .line 52
    sget v1, Lcom/wandoujia/ripple_framework/R$string;->app_auto_install_lenovo_install_success:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lhgq;->j:Ljava/lang/String;

    .line 54
    sget v1, Lcom/wandoujia/ripple_framework/R$string;->app_auto_install_lenovo_install_success_button:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lhgq;->e:Ljava/lang/String;

    .line 55
    new-instance v1, Ljava/util/HashSet;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    sget v4, Lcom/wandoujia/ripple_framework/R$string;->app_auto_install_install:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    sget v4, Lcom/wandoujia/ripple_framework/R$string;->app_auto_install_confirm:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Lhgq;->k:Ljava/util/Set;

    .line 59
    return-void
.end method


# virtual methods
.method public final a(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 132
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getClassName()Ljava/lang/CharSequence;

    move-result-object v1

    .line 133
    iget-object v2, p0, Lhgq;->a:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lhgq;->b:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lhgq;->c:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lhgq;->d:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 137
    :cond_0
    iget-object v1, p0, Lhgq;->l:Ljava/util/Set;

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getWindowId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 143
    :cond_1
    :goto_0
    return v0

    .line 139
    :cond_2
    iget-object v1, p0, Lhgq;->l:Ljava/util/Set;

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getWindowId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 143
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Landroid/view/accessibility/AccessibilityNodeInfo;)Z
    .locals 1
    .parameter

    .prologue
    .line 63
    const/4 v0, 0x0

    return v0
.end method

.method public a(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/String;)Z
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 103
    const/4 v0, 0x0

    .line 105
    iget-object v1, p0, Lhgq;->h:Ljava/lang/String;

    invoke-static {p1, v1}, Lhgd;->a(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 107
    iget-object v2, p0, Lhgq;->j:Ljava/lang/String;

    invoke-static {p1, v2}, Lhgd;->a(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 110
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 112
    :cond_0
    iget-object v1, p0, Lhgq;->e:Ljava/lang/String;

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

    .line 113
    invoke-static {v0}, Lhgd;->a(Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    .line 114
    const/4 v0, 0x1

    .line 115
    goto :goto_0

    .line 118
    :cond_1
    if-eqz v0, :cond_2

    .line 119
    invoke-static {p2}, Lhgd;->a(Ljava/lang/String;)V

    .line 122
    :cond_2
    return v0
.end method

.method public final b(Landroid/view/accessibility/AccessibilityNodeInfo;)Z
    .locals 1
    .parameter

    .prologue
    .line 68
    const/4 v0, 0x0

    return v0
.end method

.method public final c(Landroid/view/accessibility/AccessibilityNodeInfo;)Z
    .locals 1
    .parameter

    .prologue
    .line 73
    const/4 v0, 0x0

    return v0
.end method

.method public d(Landroid/view/accessibility/AccessibilityNodeInfo;)Z
    .locals 4
    .parameter

    .prologue
    .line 78
    iget-object v0, p0, Lhgq;->g:Ljava/lang/String;

    invoke-static {p1, v0}, Lhgd;->a(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 79
    iget-object v1, p0, Lhgq;->f:Ljava/lang/String;

    invoke-static {p1, v1}, Lhgd;->a(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 81
    iget-object v1, p0, Lhgq;->i:Ljava/lang/String;

    invoke-static {p1, v1}, Lhgd;->a(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 85
    const/4 v1, 0x0

    .line 87
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_0

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 89
    :cond_0
    iget-object v0, p0, Lhgq;->k:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 90
    invoke-static {p1, v0}, Lhgd;->a(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v0, v1

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 91
    invoke-static {v0}, Lhgd;->a(Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    .line 92
    invoke-static {}, Lhgd;->a()V

    .line 93
    const/4 v0, 0x1

    .line 94
    goto :goto_1

    :cond_1
    move v1, v0

    .line 95
    goto :goto_0

    .line 98
    :cond_2
    return v1
.end method
