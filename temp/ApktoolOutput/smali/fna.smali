.class public final Lfna;
.super Lfcd;
.source "MobileFlowController.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lfcd",
        "<",
        "Lfne;",
        ">;"
    }
.end annotation


# static fields
.field private static c:Lfna;


# instance fields
.field volatile b:I

.field private final d:Lefm;

.field private final e:Leax;


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 56
    invoke-direct {p0}, Lfcd;-><init>()V

    .line 32
    const/4 v0, -0x1

    iput v0, p0, Lfna;->b:I

    .line 33
    new-instance v0, Lfnb;

    invoke-direct {v0}, Lfnb;-><init>()V

    iput-object v0, p0, Lfna;->d:Lefm;

    .line 41
    new-instance v0, Lfnc;

    invoke-direct {v0}, Lfnc;-><init>()V

    iput-object v0, p0, Lfna;->e:Leax;

    .line 57
    invoke-static {}, Lcom/wandoujia/ripple_framework/ReceiverMonitor;->a()Lcom/wandoujia/ripple_framework/ReceiverMonitor;

    move-result-object v0

    iget-object v1, p0, Lfna;->d:Lefm;

    invoke-virtual {v0, v1}, Lcom/wandoujia/ripple_framework/ReceiverMonitor;->a(Lefm;)V

    .line 58
    invoke-static {}, Lcom/wandoujia/ripple_framework/ReceiverMonitor;->a()Lcom/wandoujia/ripple_framework/ReceiverMonitor;

    move-result-object v0

    iget-object v1, p0, Lfna;->e:Leax;

    invoke-virtual {v0, v1}, Lcom/wandoujia/ripple_framework/ReceiverMonitor;->a(Leax;)V

    .line 59
    return-void
.end method

.method public static a()Lfna;
    .locals 1

    .prologue
    .line 50
    sget-object v0, Lfna;->c:Lfna;

    if-nez v0, :cond_0

    .line 51
    new-instance v0, Lfna;

    invoke-direct {v0}, Lfna;-><init>()V

    sput-object v0, Lfna;->c:Lfna;

    .line 53
    :cond_0
    sget-object v0, Lfna;->c:Lfna;

    return-object v0
.end method


# virtual methods
.method public final a(I)V
    .locals 3
    .parameter

    .prologue
    .line 96
    iget v0, p0, Lfna;->b:I

    if-eq p1, v0, :cond_3

    .line 97
    if-eqz p1, :cond_0

    .line 98
    invoke-static {}, Lesb;->a()Landroid/content/Context;

    move-result-object v0

    packed-switch p1, :pswitch_data_0

    .line 100
    :cond_0
    :goto_0
    invoke-static {}, Lesb;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/wandoujia/base/utils/NetworkUtil;->isMobileNetworkConnected(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 101
    const/4 p1, 0x0

    .line 103
    :cond_1
    iput p1, p0, Lfna;->b:I

    .line 104
    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    .line 105
    invoke-static {}, Lesb;->b()Lfvu;

    move-result-object v0

    invoke-virtual {v0}, Lfvu;->shutdown()V

    .line 110
    :goto_1
    new-instance v0, Lfnd;

    invoke-direct {v0, p0}, Lfnd;-><init>(Lfna;)V

    iget-object v1, p0, Lfcd;->a:Lgdw;

    invoke-virtual {v1}, Lgdw;->b()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Lfce;->a(Ljava/lang/Object;)V

    goto :goto_2

    .line 98
    :pswitch_0
    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "setting_save_mobile_flow"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-static {v0}, Lcom/wandoujia/base/utils/SharePrefSubmitor;->submit(Landroid/content/SharedPreferences$Editor;)V

    goto :goto_0

    .line 107
    :cond_2
    invoke-static {}, Lesb;->b()Lfvu;

    move-result-object v0

    invoke-virtual {v0}, Lfvu;->start()V

    goto :goto_1

    .line 123
    :cond_3
    return-void

    .line 98
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final b()I
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 62
    iget v1, p0, Lfna;->b:I

    if-gez v1, :cond_2

    .line 64
    invoke-static {}, Lesb;->a()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/wandoujia/base/utils/NetworkUtil;->isMobileNetworkConnected(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 65
    const/4 v0, 0x0

    .line 69
    :cond_0
    :goto_0
    invoke-virtual {p0, v0}, Lfna;->a(I)V

    .line 72
    :goto_1
    return v0

    .line 67
    :cond_1
    invoke-static {}, Lesb;->a()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "setting_save_mobile_flow"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0

    .line 72
    :cond_2
    iget v0, p0, Lfna;->b:I

    goto :goto_1
.end method
