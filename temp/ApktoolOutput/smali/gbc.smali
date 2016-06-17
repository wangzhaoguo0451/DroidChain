.class final Lgbc;
.super Ljava/lang/Object;
.source "FollowUsTipsTransparentActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lgbb;


# direct methods
.method constructor <init>(Lgbb;)V
    .locals 0
    .parameter

    .prologue
    .line 77
    iput-object p1, p0, Lgbc;->a:Lgbb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lgbc;->a:Lgbb;

    iget-object v0, v0, Lgbb;->a:Lcom/wandoujia/p4/settings/FollowUsTipsTransparentActivity;

    invoke-virtual {v0}, Lcom/wandoujia/p4/settings/FollowUsTipsTransparentActivity;->finish()V

    .line 81
    return-void
.end method
