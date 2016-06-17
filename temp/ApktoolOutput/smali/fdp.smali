.class final Lfdp;
.super Ljava/lang/Object;
.source "CommunityLikeTopicAction.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lfdo;


# direct methods
.method constructor <init>(Lfdo;)V
    .locals 0
    .parameter

    .prologue
    .line 77
    iput-object p1, p0, Lfdp;->a:Lfdo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 80
    iget-object v0, p0, Lfdp;->a:Lfdo;

    iget-object v0, v0, Lfdo;->b:Lfdn;

    invoke-static {v0}, Lfdn;->a(Lfdn;)Lcom/wandoujia/p4/community/http/model/CommunityTopicModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wandoujia/p4/community/http/model/CommunityTopicModel;->currentUserCanVote()Z

    move-result v0

    if-nez v0, :cond_0

    .line 81
    iget-object v0, p0, Lfdp;->a:Lfdo;

    iget-object v0, v0, Lfdo;->b:Lfdn;

    invoke-static {v0}, Lfdn;->b(Lfdn;)Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0e01fc

    sget v2, Ldxa;->b:I

    int-to-long v2, v2

    invoke-static {v0, v1, v2, v3}, Ldxa;->a(Landroid/content/Context;IJ)Ldxa;

    move-result-object v0

    invoke-virtual {v0}, Ldxa;->a()V

    .line 86
    :goto_0
    return-void

    .line 84
    :cond_0
    iget-object v0, p0, Lfdp;->a:Lfdo;

    iget-object v0, v0, Lfdo;->b:Lfdn;

    iget-object v1, p0, Lfdp;->a:Lfdo;

    iget-boolean v1, v1, Lfdo;->a:Z

    invoke-static {v0, v1}, Lfdn;->a(Lfdn;Z)V

    goto :goto_0
.end method
