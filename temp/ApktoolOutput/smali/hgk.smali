.class public final Lhgk;
.super Ljava/lang/Object;
.source "AutoInstallImpl.java"

# interfaces
.implements Lhgl;


# static fields
.field private static a:Landroid/os/PowerManager$WakeLock;


# instance fields
.field private b:Lhgm;

.field private final c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "com.android.packageinstaller"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "com.google.android.packageinstaller"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "com.lenovo.safecenter"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "com.lenovo.security"

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lhgk;->c:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    .prologue
    .line 112
    invoke-static {}, Lcom/wandoujia/ripple_framework/Config;->m()V

    .line 114
    return-void
.end method

.method public final a(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 4
    .parameter
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    .line 44
    const/16 v0, 0x10

    invoke-static {v0}, Lcom/wandoujia/base/utils/SystemUtil;->aboveApiLevel(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 94
    :cond_0
    :goto_0
    return-void

    .line 48
    :cond_1
    iget-object v0, p0, Lhgk;->c:Ljava/util/Set;

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getPackageName()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getSource()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    .line 53
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getPackageName()Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 57
    invoke-static {v0}, Lhgd;->c(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v1

    .line 58
    iget-object v2, p0, Lhgk;->b:Lhgm;

    if-nez v2, :cond_3

    .line 59
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getPackageName()Ljava/lang/CharSequence;

    move-result-object v2

    if-nez v2, :cond_2

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_2
    invoke-static {}, Lcom/wandoujia/base/utils/SystemUtil;->isMIUI()Z

    move-result v2

    if-eqz v2, :cond_5

    new-instance v0, Lhgs;

    invoke-direct {v0}, Lhgs;-><init>()V

    :goto_1
    iput-object v0, p0, Lhgk;->b:Lhgm;

    .line 62
    :cond_3
    sget-object v0, Lhgk;->a:Landroid/os/PowerManager$WakeLock;

    if-nez v0, :cond_4

    .line 63
    sget-object v0, Lham;->f:Lham;

    iget-object v0, v0, Lhal;->d:Landroid/content/Context;

    const-string v2, "power"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    const v2, 0x10000006

    const-string v3, "AUTO_INSTALL_WAKE_LOCK"

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    sput-object v0, Lhgk;->a:Landroid/os/PowerManager$WakeLock;

    .line 65
    :cond_4
    sget-object v0, Lhgk;->a:Landroid/os/PowerManager$WakeLock;

    const-wide/32 v2, 0x493e0

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 67
    iget-object v0, p0, Lhgk;->b:Lhgm;

    invoke-interface {v0, p1}, Lhgm;->a(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    invoke-static {v1}, Lhgd;->b(Landroid/view/accessibility/AccessibilityNodeInfo;)Ljava/lang/String;

    move-result-object v0

    .line 73
    iget-object v2, p0, Lhgk;->b:Lhgm;

    invoke-interface {v2, v1}, Lhgm;->a(Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 77
    iget-object v2, p0, Lhgk;->b:Lhgm;

    invoke-interface {v2, v1}, Lhgm;->b(Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 81
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 85
    iget-object v2, p0, Lhgk;->b:Lhgm;

    invoke-interface {v2, v1}, Lhgm;->c(Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 89
    iget-object v2, p0, Lhgk;->b:Lhgm;

    invoke-interface {v2, v1}, Lhgm;->d(Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 93
    iget-object v2, p0, Lhgk;->b:Lhgm;

    invoke-interface {v2, v1, v0}, Lhgm;->a(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 59
    :cond_5
    invoke-static {}, Lcom/wandoujia/base/utils/SystemUtil;->isFlymeOs()Z

    move-result v2

    if-eqz v2, :cond_6

    new-instance v0, Lhgp;

    invoke-direct {v0}, Lhgp;-><init>()V

    goto :goto_1

    :cond_6
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getPackageName()Ljava/lang/CharSequence;

    move-result-object v2

    const-string v3, "com.lenovo.safecenter"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    new-instance v0, Lhgq;

    invoke-direct {v0}, Lhgq;-><init>()V

    goto :goto_1

    :cond_7
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getPackageName()Ljava/lang/CharSequence;

    move-result-object v0

    const-string v2, "com.lenovo.security"

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    new-instance v0, Lhgr;

    invoke-direct {v0}, Lhgr;-><init>()V

    goto/16 :goto_1

    :cond_8
    new-instance v0, Lhgo;

    invoke-direct {v0}, Lhgo;-><init>()V

    goto/16 :goto_1
.end method

.method public final b()V
    .locals 0

    .prologue
    .line 118
    invoke-static {}, Lcom/wandoujia/ripple_framework/Config;->k()V

    .line 119
    invoke-static {}, Lcom/wandoujia/ripple_framework/Config;->n()V

    .line 121
    return-void
.end method
