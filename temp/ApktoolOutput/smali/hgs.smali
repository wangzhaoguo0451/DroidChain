.class public final Lhgs;
.super Ljava/lang/Object;
.source "MIUIInstaller.java"

# interfaces
.implements Lhgm;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Ljava/lang/String;

.field private g:Ljava/util/Set;
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
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lhgs;->g:Ljava/util/Set;

    .line 33
    const-string v0, "com.android.packageinstaller.UninstallerActivity"

    iput-object v0, p0, Lhgs;->a:Ljava/lang/String;

    .line 34
    const-string v0, "com.android.packageinstaller.UninstallAppProgress"

    iput-object v0, p0, Lhgs;->b:Ljava/lang/String;

    .line 36
    sget-object v0, Lham;->f:Lham;

    iget-object v0, v0, Lhal;->d:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 37
    sget v1, Lcom/wandoujia/ripple_framework/R$string;->app_auto_install_install:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lhgs;->c:Ljava/lang/String;

    .line 38
    sget v1, Lcom/wandoujia/ripple_framework/R$string;->app_auto_install_confirm:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lhgs;->d:Ljava/lang/String;

    .line 40
    new-instance v1, Ljava/util/HashSet;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    sget v4, Lcom/wandoujia/ripple_framework/R$string;->app_auto_install_done_miui:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    sget v4, Lcom/wandoujia/ripple_framework/R$string;->app_auto_install_done:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    sget v4, Lcom/wandoujia/ripple_framework/R$string;->app_auto_install_finish_miui:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Lhgs;->e:Ljava/util/Set;

    .line 46
    sget v1, Lcom/wandoujia/ripple_framework/R$string;->app_auto_install_allow_once:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lhgs;->f:Ljava/lang/String;

    .line 47
    return-void
.end method


# virtual methods
.method public final a(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 118
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getClassName()Ljava/lang/CharSequence;

    move-result-object v1

    .line 119
    iget-object v2, p0, Lhgs;->a:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lhgs;->b:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 120
    :cond_0
    iget-object v1, p0, Lhgs;->g:Ljava/util/Set;

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getWindowId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 126
    :cond_1
    :goto_0
    return v0

    .line 122
    :cond_2
    iget-object v1, p0, Lhgs;->g:Ljava/util/Set;

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getWindowId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 126
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final a(Landroid/view/accessibility/AccessibilityNodeInfo;)Z
    .locals 3
    .parameter

    .prologue
    .line 51
    const/4 v0, 0x0

    .line 54
    iget-object v1, p0, Lhgs;->f:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->findAccessibilityNodeInfosByText(Ljava/lang/String;)Ljava/util/List;

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

    .line 55
    invoke-static {v0}, Lhgd;->a(Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    .line 56
    const/4 v0, 0x1

    .line 57
    goto :goto_0

    .line 58
    :cond_0
    return v0
.end method

.method public final a(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/String;)Z
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 95
    const/4 v0, 0x0

    .line 97
    iget-object v1, p0, Lhgs;->e:Ljava/util/Set;

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

    .line 98
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

    .line 99
    invoke-static {v0}, Lhgd;->a(Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    .line 100
    const/4 v0, 0x1

    .line 101
    goto :goto_1

    :cond_0
    move v1, v0

    .line 102
    goto :goto_0

    .line 104
    :cond_1
    if-eqz v1, :cond_2

    .line 105
    invoke-static {p2}, Lhgd;->a(Ljava/lang/String;)V

    .line 108
    :cond_2
    return v1
.end method

.method public final b(Landroid/view/accessibility/AccessibilityNodeInfo;)Z
    .locals 3
    .parameter

    .prologue
    .line 63
    const/4 v0, 0x0

    .line 65
    iget-object v1, p0, Lhgs;->d:Ljava/lang/String;

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

    .line 66
    invoke-static {v0}, Lhgd;->a(Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    .line 67
    invoke-static {}, Lhgd;->a()V

    .line 68
    const/4 v0, 0x1

    .line 69
    goto :goto_0

    .line 70
    :cond_0
    return v0
.end method

.method public final c(Landroid/view/accessibility/AccessibilityNodeInfo;)Z
    .locals 1
    .parameter

    .prologue
    .line 75
    const/4 v0, 0x0

    return v0
.end method

.method public final d(Landroid/view/accessibility/AccessibilityNodeInfo;)Z
    .locals 3
    .parameter

    .prologue
    .line 81
    const/4 v0, 0x0

    .line 83
    iget-object v1, p0, Lhgs;->c:Ljava/lang/String;

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

    .line 84
    invoke-static {v0}, Lhgd;->a(Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    .line 85
    invoke-static {}, Lhgd;->a()V

    .line 86
    const/4 v0, 0x1

    .line 87
    goto :goto_0

    .line 89
    :cond_0
    return v0
.end method
