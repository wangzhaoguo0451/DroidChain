.class public final Lfnj;
.super Ljava/lang/Object;
.source "CommunityImageUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 153
    iput-object p1, p0, Lfnj;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 156
    new-instance v0, Ledd;

    iget-object v1, p0, Lfnj;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Ledd;-><init>(Ljava/lang/String;)V

    .line 158
    :try_start_0
    invoke-static {}, Lesb;->b()Lfvu;

    move-result-object v1

    invoke-virtual {v1, v0}, Lfvu;->execute(Lcom/wandoujia/rpc/http/delegate/ApiDelegate;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/community/http/model/CommunityImageSize;

    .line 159
    invoke-virtual {v0}, Lcom/wandoujia/p4/community/http/model/CommunityImageSize;->getS()I

    move-result v1

    invoke-static {v1}, Lcom/wandoujia/p4/configs/Config;->a(I)V

    .line 160
    invoke-virtual {v0}, Lcom/wandoujia/p4/community/http/model/CommunityImageSize;->getM()I

    move-result v0

    invoke-static {v0}, Lcom/wandoujia/p4/configs/Config;->b(I)V
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 163
    :goto_0
    return-void

    .line 162
    :catch_0
    move-exception v0

    goto :goto_0
.end method
