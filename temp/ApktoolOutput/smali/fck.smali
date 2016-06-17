.class final Lfck;
.super Ljava/lang/Object;
.source "CommunityAccountListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/wandoujia/account/listener/IAccountListener$LoginType;


# direct methods
.method constructor <init>(Lcom/wandoujia/account/listener/IAccountListener$LoginType;)V
    .locals 0
    .parameter

    .prologue
    .line 31
    iput-object p1, p0, Lfck;->a:Lcom/wandoujia/account/listener/IAccountListener$LoginType;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 34
    iget-object v0, p0, Lfck;->a:Lcom/wandoujia/account/listener/IAccountListener$LoginType;

    sget-object v1, Lcom/wandoujia/account/listener/IAccountListener$LoginType;->LOGIN:Lcom/wandoujia/account/listener/IAccountListener$LoginType;

    if-ne v0, v1, :cond_0

    .line 36
    new-instance v0, Lfjm;

    invoke-direct {v0}, Lfjm;-><init>()V

    .line 38
    :try_start_0
    invoke-static {}, Lesb;->b()Lfvu;

    move-result-object v1

    invoke-virtual {v1, v0}, Lfvu;->execute(Lcom/wandoujia/rpc/http/delegate/ApiDelegate;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/community/http/model/CommunityResponseInfo;

    .line 39
    if-eqz v0, :cond_0

    .line 40
    const-string v1, "true"

    invoke-virtual {v0}, Lcom/wandoujia/p4/community/http/model/CommunityResponseInfo;->getMsg()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
