.class public final Lfcj;
.super Ljava/lang/Object;
.source "CommunityAccountListener.java"

# interfaces
.implements Lcom/wandoujia/account/listener/IAccountListener;


# instance fields
.field private a:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const/4 v0, 0x1

    iput-boolean v0, p0, Lfcj;->a:Z

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    .prologue
    .line 57
    iget-boolean v0, p0, Lfcj;->a:Z

    if-eqz v0, :cond_0

    .line 58
    invoke-static {}, Ld;->B()Lhrx;

    move-result-object v0

    new-instance v1, Lcom/wandoujia/p4/community/eventbus/CommunityEvent;

    sget-object v2, Lcom/wandoujia/p4/community/eventbus/CommunityEvent$Type;->LOGIN:Lcom/wandoujia/p4/community/eventbus/CommunityEvent$Type;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lcom/wandoujia/p4/community/eventbus/CommunityEvent;-><init>(Lcom/wandoujia/p4/community/eventbus/CommunityEvent$Type;ZLjava/lang/Object;)V

    invoke-virtual {v0, v1}, Lhrx;->d(Ljava/lang/Object;)V

    .line 60
    const/4 v0, 0x0

    iput-boolean v0, p0, Lfcj;->a:Z

    .line 62
    :cond_0
    return-void
.end method

.method public final a(Lcom/wandoujia/account/listener/IAccountListener$LoginType;)V
    .locals 5
    .parameter

    .prologue
    .line 26
    iget-boolean v0, p0, Lfcj;->a:Z

    if-eqz v0, :cond_0

    .line 27
    invoke-static {}, Ld;->B()Lhrx;

    move-result-object v0

    new-instance v1, Lcom/wandoujia/p4/community/eventbus/CommunityEvent;

    sget-object v2, Lcom/wandoujia/p4/community/eventbus/CommunityEvent$Type;->LOGIN:Lcom/wandoujia/p4/community/eventbus/CommunityEvent$Type;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lcom/wandoujia/p4/community/eventbus/CommunityEvent;-><init>(Lcom/wandoujia/p4/community/eventbus/CommunityEvent$Type;ZLjava/lang/Object;)V

    invoke-virtual {v0, v1}, Lhrx;->d(Ljava/lang/Object;)V

    .line 29
    const/4 v0, 0x0

    iput-boolean v0, p0, Lfcj;->a:Z

    .line 31
    :cond_0
    new-instance v0, Lfck;

    invoke-direct {v0, p1}, Lfck;-><init>(Lcom/wandoujia/account/listener/IAccountListener$LoginType;)V

    invoke-static {v0}, Lcom/wandoujia/base/utils/ThreadPool;->execute(Ljava/lang/Runnable;)V

    .line 53
    return-void
.end method

.method public final a(Z)V
    .locals 1
    .parameter

    .prologue
    .line 66
    const/4 v0, 0x1

    iput-boolean v0, p0, Lfcj;->a:Z

    .line 67
    return-void
.end method
