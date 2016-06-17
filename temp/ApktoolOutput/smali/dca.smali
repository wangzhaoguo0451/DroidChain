.class public final Ldca;
.super Lham;
.source "JupiterDataContext.java"


# static fields
.field public static a:Ldca;


# instance fields
.field public b:Ldrq;

.field public c:Lfpk;

.field private q:Lcom/wandoujia/jupiter/startpage/manager/LocalFeedManager;

.field private r:Ldri;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcqj;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 58
    invoke-direct {p0, p1, p2}, Lham;-><init>(Landroid/content/Context;Lcqj;)V

    .line 59
    sput-object p0, Ldca;->a:Ldca;

    .line 60
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 96
    const-string v0, "local_feed"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Ldca;->q:Lcom/wandoujia/jupiter/startpage/manager/LocalFeedManager;

    .line 99
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1}, Lham;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method protected final a()V
    .locals 4

    .prologue
    .line 78
    invoke-super {p0}, Lham;->a()V

    .line 79
    const-string v0, "navigation"

    new-instance v1, Lcom/wandoujia/jupiter/navigation/NavigationManager;

    invoke-direct {v1}, Lcom/wandoujia/jupiter/navigation/NavigationManager;-><init>()V

    invoke-virtual {p0, v0, v1}, Ldca;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 80
    const-string v0, "presenter"

    new-instance v1, Lhhn;

    invoke-direct {v1}, Lhhn;-><init>()V

    invoke-virtual {p0, v0, v1}, Ldca;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 81
    const-string v0, "component"

    new-instance v1, Lhho;

    invoke-direct {v1}, Lhho;-><init>()V

    invoke-virtual {p0, v0, v1}, Ldca;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 82
    const-string v0, "type_face"

    new-instance v1, Lcom/wandoujia/ripple_framework/TypefaceManager;

    iget-object v2, p0, Ldca;->d:Landroid/content/Context;

    new-instance v3, Lhav;

    invoke-direct {v3}, Lhav;-><init>()V

    invoke-direct {v1, v2, v3}, Lcom/wandoujia/ripple_framework/TypefaceManager;-><init>(Landroid/content/Context;Lhav;)V

    invoke-virtual {p0, v0, v1}, Ldca;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 83
    return-void
.end method

.method protected final a(Lcqj;)V
    .locals 2
    .parameter

    .prologue
    .line 64
    invoke-super {p0, p1}, Lham;->a(Lcqj;)V

    .line 65
    new-instance v0, Lcom/wandoujia/jupiter/startpage/manager/LocalFeedManager;

    invoke-direct {v0}, Lcom/wandoujia/jupiter/startpage/manager/LocalFeedManager;-><init>()V

    iput-object v0, p0, Ldca;->q:Lcom/wandoujia/jupiter/startpage/manager/LocalFeedManager;

    .line 66
    const-string v0, "local_feed"

    iget-object v1, p0, Ldca;->q:Lcom/wandoujia/jupiter/startpage/manager/LocalFeedManager;

    invoke-virtual {p0, v0, v1}, Ldca;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 67
    iget-object v0, p0, Lhal;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/wandoujia/p4/pay/storage/LocalStorage;->init(Landroid/content/Context;)V

    .line 68
    new-instance v0, Ldrq;

    invoke-direct {v0}, Ldrq;-><init>()V

    iput-object v0, p0, Ldca;->b:Ldrq;

    .line 69
    new-instance v0, Lfpk;

    invoke-direct {v0}, Lfpk;-><init>()V

    iput-object v0, p0, Ldca;->c:Lfpk;

    .line 70
    iget-object v0, p0, Ldca;->l:Lcom/wandoujia/ripple_framework/installer/AppTaskManager;

    new-instance v1, Lhfm;

    invoke-direct {v1}, Lhfm;-><init>()V

    iput-object v1, v0, Lcom/wandoujia/ripple_framework/installer/AppTaskManager;->b:Lhfm;

    .line 71
    iget-object v0, p0, Ldca;->l:Lcom/wandoujia/ripple_framework/installer/AppTaskManager;

    new-instance v1, Lhfk;

    invoke-direct {v1}, Lhfk;-><init>()V

    iput-object v1, v0, Lcom/wandoujia/ripple_framework/installer/AppTaskManager;->c:Lhfk;

    .line 72
    new-instance v0, Ldri;

    invoke-direct {v0}, Ldri;-><init>()V

    iput-object v0, p0, Ldca;->r:Ldri;

    .line 73
    invoke-static {}, Lcom/wandoujia/ripple_framework/ReceiverMonitor;->a()Lcom/wandoujia/ripple_framework/ReceiverMonitor;

    move-result-object v0

    iget-object v1, p0, Ldca;->r:Ldri;

    invoke-virtual {v0, v1}, Lcom/wandoujia/ripple_framework/ReceiverMonitor;->a(Lhat;)V

    .line 74
    return-void
.end method

.method public final b()Leqr;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Ldca;->g:Leqr;

    if-nez v0, :cond_0

    .line 89
    new-instance v0, Ldgc;

    invoke-direct {v0}, Ldgc;-><init>()V

    iput-object v0, p0, Ldca;->g:Leqr;

    .line 91
    :cond_0
    iget-object v0, p0, Ldca;->g:Leqr;

    return-object v0
.end method

.method public final c()Lhaw;
    .locals 1

    .prologue
    .line 111
    new-instance v0, Ldcm;

    invoke-direct {v0}, Ldcm;-><init>()V

    return-object v0
.end method
