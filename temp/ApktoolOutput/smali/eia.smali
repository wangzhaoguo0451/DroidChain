.class public final Leia;
.super Ljava/lang/Thread;
.source "ZipManager.java"


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Leih;

.field final synthetic c:Lcom/wandoujia/launcher_base/utils/ZipManager;

.field private synthetic d:Leig;


# direct methods
.method constructor <init>(Lcom/wandoujia/launcher_base/utils/ZipManager;Ljava/lang/String;Leig;Leih;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 141
    iput-object p1, p0, Leia;->c:Lcom/wandoujia/launcher_base/utils/ZipManager;

    iput-object p2, p0, Leia;->a:Ljava/lang/String;

    iput-object p3, p0, Leia;->d:Leig;

    iput-object p4, p0, Leia;->b:Leih;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 144
    iget-object v0, p0, Leia;->c:Lcom/wandoujia/launcher_base/utils/ZipManager;

    iget-object v0, v0, Lcom/wandoujia/launcher_base/utils/ZipManager;->a:Ljava/util/Map;

    iget-object v1, p0, Leia;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/wandoujia/launcher_base/utils/ZipManager$ZipStatus;->SUCCESS:Lcom/wandoujia/launcher_base/utils/ZipManager$ZipStatus;

    if-eq v0, v1, :cond_0

    .line 145
    iget-object v0, p0, Leia;->d:Leig;

    invoke-virtual {v0}, Leig;->run()V

    .line 147
    :cond_0
    iget-object v0, p0, Leia;->b:Leih;

    if-eqz v0, :cond_1

    .line 148
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Leib;

    invoke-direct {v1, p0}, Leib;-><init>(Leia;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 155
    :cond_1
    return-void
.end method
