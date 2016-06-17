.class public final Lhgp;
.super Ljava/lang/Object;
.source "FlymeInstaller.java"

# interfaces
.implements Lhgm;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/Set;
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
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lhgp;->e:Ljava/util/Set;

    .line 30
    const-string v0, "com.android.packageinstaller.UninstallerActivity"

    iput-object v0, p0, Lhgp;->a:Ljava/lang/String;

    .line 31
    const-string v0, "com.android.packageinstaller.UninstallAppProgress"

    iput-object v0, p0, Lhgp;->b:Ljava/lang/String;

    .line 33
    sget-object v0, Lham;->f:Lham;

    iget-object v0, v0, Lhal;->d:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 34
    new-instance v1, Ljava/util/HashSet;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    sget v4, Lcom/wandoujia/ripple_framework/R$string;->app_auto_install_confirm:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    sget v4, Lcom/wandoujia/ripple_framework/R$string;->app_auto_install_confirm_uppercase:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Lhgp;->d:Ljava/util/Set;

    .line 39
    sget v1, Lcom/wandoujia/ripple_framework/R$string;->app_auto_install_install:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lhgp;->c:Ljava/lang/String;

    .line 41
    return-void
.end method


# virtual methods
.method public final a(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 98
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getClassName()Ljava/lang/CharSequence;

    move-result-object v1

    .line 99
    iget-object v2, p0, Lhgp;->a:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lhgp;->b:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 100
    :cond_0
    iget-object v1, p0, Lhgp;->e:Ljava/util/Set;

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getWindowId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 106
    :cond_1
    :goto_0
    return v0

    .line 102
    :cond_2
    iget-object v1, p0, Lhgp;->e:Ljava/util/Set;

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getWindowId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 106
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final a(Landroid/view/accessibility/AccessibilityNodeInfo;)Z
    .locals 1
    .parameter

    .prologue
    .line 45
    const/4 v0, 0x0

    return v0
.end method

.method public final a(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/String;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 87
    invoke-static {p2}, Lhgd;->a(Ljava/lang/String;)V

    .line 88
    const/4 v0, 0x0

    return v0
.end method

.method public final b(Landroid/view/accessibility/AccessibilityNodeInfo;)Z
    .locals 4
    .parameter

    .prologue
    .line 51
    const/4 v0, 0x0

    .line 53
    iget-object v1, p0, Lhgp;->d:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 54
    invoke-static {p1, v0}, Lhgd;->a(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v0, v1

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 55
    invoke-static {v0}, Lhgd;->a(Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    .line 56
    invoke-static {}, Lhgd;->a()V

    .line 57
    const/4 v0, 0x1

    .line 58
    goto :goto_1

    :cond_0
    move v1, v0

    .line 59
    goto :goto_0

    .line 61
    :cond_1
    return v1
.end method

.method public final c(Landroid/view/accessibility/AccessibilityNodeInfo;)Z
    .locals 1
    .parameter

    .prologue
    .line 66
    const/4 v0, 0x0

    return v0
.end method

.method public final d(Landroid/view/accessibility/AccessibilityNodeInfo;)Z
    .locals 3
    .parameter

    .prologue
    .line 72
    const/4 v0, 0x0

    .line 75
    iget-object v1, p0, Lhgp;->c:Ljava/lang/String;

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

    .line 76
    invoke-static {v0}, Lhgd;->a(Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    .line 77
    invoke-static {}, Lhgd;->a()V

    .line 79
    const/4 v0, 0x1

    .line 80
    goto :goto_0

    .line 82
    :cond_0
    return v0
.end method
