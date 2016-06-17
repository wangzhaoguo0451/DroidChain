.class final Lffj;
.super Ljava/lang/Object;
.source "CommunityNotificationCardController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lfga;

.field private synthetic b:Lcom/wandoujia/p4/community/card/view/CommunityNotificationCardView;


# direct methods
.method constructor <init>(Lfga;Lcom/wandoujia/p4/community/card/view/CommunityNotificationCardView;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 65
    iput-object p1, p0, Lffj;->a:Lfga;

    iput-object p2, p0, Lffj;->b:Lcom/wandoujia/p4/community/card/view/CommunityNotificationCardView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4
    .parameter

    .prologue
    .line 68
    iget-object v0, p0, Lffj;->a:Lfga;

    iget-object v1, p0, Lffj;->b:Lcom/wandoujia/p4/community/card/view/CommunityNotificationCardView;

    new-instance v2, Lfdy;

    iget-object v3, v0, Lfga;->a:Lcom/wandoujia/p4/community/http/model/CommunityNotificationModel;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-direct {v2, v3, v0}, Lfdy;-><init>(Lcom/wandoujia/p4/community/http/model/CommunityNotificationModel;Landroid/app/Activity;)V

    .line 69
    invoke-interface {v2}, Lcom/wandoujia/mvc/Action;->execute()V

    .line 72
    return-void
.end method
