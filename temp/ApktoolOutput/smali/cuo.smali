.class public final Lcuo;
.super Ljava/lang/Object;
.source "GamePacketInstaller.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Ljava/lang/String;

.field private synthetic b:Ljava/lang/String;

.field private synthetic c:Lcom/wandoujia/gamepacket/GamePacketInstaller;


# direct methods
.method public constructor <init>(Lcom/wandoujia/gamepacket/GamePacketInstaller;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 337
    iput-object p1, p0, Lcuo;->c:Lcom/wandoujia/gamepacket/GamePacketInstaller;

    iput-object p2, p0, Lcuo;->a:Ljava/lang/String;

    iput-object p3, p0, Lcuo;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 340
    iget-object v0, p0, Lcuo;->c:Lcom/wandoujia/gamepacket/GamePacketInstaller;

    iget-object v0, v0, Lcom/wandoujia/gamepacket/GamePacketInstaller;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcuv;

    .line 341
    iget-object v2, p0, Lcuo;->a:Ljava/lang/String;

    iget-object v3, p0, Lcuo;->b:Ljava/lang/String;

    iget-object v0, v0, Lcuv;->a:Lhfr;

    invoke-virtual {v0, v3, v2}, Lhfr;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 343
    :cond_0
    return-void
.end method
