.class public final Lfev;
.super Ljava/lang/Object;
.source "CommunityStickTopicAction.java"

# interfaces
.implements Lcom/wandoujia/mvc/Action;


# instance fields
.field private final a:Landroid/app/Activity;

.field private final b:Ljava/lang/String;

.field private final c:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lfev;->a:Landroid/app/Activity;

    .line 29
    iput-object p2, p0, Lfev;->b:Ljava/lang/String;

    .line 30
    iput-boolean p3, p0, Lfev;->c:Z

    .line 31
    return-void
.end method

.method static synthetic a(Lfev;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 21
    iget-object v0, p0, Lfev;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lfev;)Z
    .locals 1
    .parameter

    .prologue
    .line 21
    iget-boolean v0, p0, Lfev;->c:Z

    return v0
.end method

.method static synthetic c(Lfev;)Landroid/app/Activity;
    .locals 1
    .parameter

    .prologue
    .line 21
    iget-object v0, p0, Lfev;->a:Landroid/app/Activity;

    return-object v0
.end method


# virtual methods
.method public final execute()V
    .locals 2

    .prologue
    .line 35
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lfew;

    invoke-direct {v1, p0}, Lfew;-><init>(Lfev;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 68
    return-void
.end method
