.class public final Ldta;
.super Ljava/lang/Object;
.source "LocalFeedManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/wandoujia/jupiter/startpage/manager/LocalFeedManager;


# direct methods
.method public constructor <init>(Lcom/wandoujia/jupiter/startpage/manager/LocalFeedManager;)V
    .locals 0
    .parameter

    .prologue
    .line 153
    iput-object p1, p0, Ldta;->a:Lcom/wandoujia/jupiter/startpage/manager/LocalFeedManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Ldta;->a:Lcom/wandoujia/jupiter/startpage/manager/LocalFeedManager;

    invoke-virtual {v0}, Lcom/wandoujia/jupiter/startpage/manager/LocalFeedManager;->e()V

    .line 157
    return-void
.end method
