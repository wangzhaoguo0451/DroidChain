.class final Lfeh;
.super Ljava/lang/Object;
.source "CommunityPostNewTopicAction.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lfeg;


# direct methods
.method constructor <init>(Lfeg;)V
    .locals 0
    .parameter

    .prologue
    .line 89
    iput-object p1, p0, Lfeh;->a:Lfeg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 92
    iget-object v0, p0, Lfeh;->a:Lfeg;

    iget-object v0, v0, Lfeg;->a:Lfed;

    invoke-static {v0}, Lfed;->a(Lfed;)Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lfeh;->a:Lfeg;

    iget-object v1, v1, Lfeg;->a:Lfed;

    invoke-static {v1}, Lfed;->b(Lfed;)Lcom/wandoujia/p4/community/http/model/CommunityGroupModel;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/wandoujia/p4/community/activity/CommunityPostContentActivity;->a(Landroid/content/Context;Lcom/wandoujia/p4/community/http/model/CommunityGroupModel;)V

    .line 93
    return-void
.end method
