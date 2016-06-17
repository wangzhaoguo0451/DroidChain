.class public final Lfcv;
.super Ljava/lang/Object;
.source "CommunityFeatureTopicAction.java"

# interfaces
.implements Lcom/wandoujia/mvc/Action;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lfcv;->a:Ljava/lang/String;

    .line 27
    iput-boolean p2, p0, Lfcv;->b:Z

    .line 28
    return-void
.end method

.method static synthetic a(Lfcv;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 20
    iget-object v0, p0, Lfcv;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lfcv;)Z
    .locals 1
    .parameter

    .prologue
    .line 20
    iget-boolean v0, p0, Lfcv;->b:Z

    return v0
.end method


# virtual methods
.method public final execute()V
    .locals 2

    .prologue
    .line 32
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lfcw;

    invoke-direct {v1, p0}, Lfcw;-><init>(Lfcv;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 73
    return-void
.end method
