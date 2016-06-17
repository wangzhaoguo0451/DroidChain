.class public final Lfdd;
.super Ljava/lang/Object;
.source "CommunityGetTopicLikeUsersAction.java"

# interfaces
.implements Lcom/wandoujia/mvc/Action;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lfdh;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lfdh;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lfdd;->a:Ljava/lang/String;

    .line 29
    iput-object p2, p0, Lfdd;->b:Lfdh;

    .line 30
    return-void
.end method

.method static synthetic a(Lfdd;)Lfdh;
    .locals 1
    .parameter

    .prologue
    .line 21
    iget-object v0, p0, Lfdd;->b:Lfdh;

    return-object v0
.end method


# virtual methods
.method public final execute()V
    .locals 2

    .prologue
    .line 34
    new-instance v0, Lfde;

    iget-object v1, p0, Lfdd;->a:Ljava/lang/String;

    invoke-direct {v0, p0, v1}, Lfde;-><init>(Lfdd;Ljava/lang/String;)V

    sget-object v1, Lcom/wandoujia/base/utils/ThreadPool$Priority;->LOW:Lcom/wandoujia/base/utils/ThreadPool$Priority;

    invoke-static {v0, v1}, Lcom/wandoujia/base/utils/ThreadPool;->execute(Ljava/lang/Runnable;Lcom/wandoujia/base/utils/ThreadPool$Priority;)V

    .line 35
    return-void
.end method
