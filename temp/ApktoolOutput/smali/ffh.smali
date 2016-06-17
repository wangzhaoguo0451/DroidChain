.class public final Lffh;
.super Ljava/lang/Object;
.source "CommunityNotificationCardController.java"

# interfaces
.implements Lcom/wandoujia/mvc/BaseController;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/wandoujia/mvc/BaseController",
        "<",
        "Lcom/wandoujia/p4/community/card/view/CommunityNotificationCardView;",
        "Lfga;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic bind(Lcom/wandoujia/mvc/BaseView;Lcom/wandoujia/mvc/BaseModel;)V
    .locals 7
    .parameter
    .parameter

    .prologue
    const v6, 0x7f0a0044

    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 21
    check-cast p1, Lcom/wandoujia/p4/community/card/view/CommunityNotificationCardView;

    check-cast p2, Lfga;

    invoke-virtual {p2}, Lfga;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/wandoujia/p4/community/card/view/CommunityNotificationCardView;->getAvatar()Lcom/wandoujia/p4/views/CircleAsyncImageView;

    move-result-object v0

    invoke-virtual {p2}, Lfga;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v6}, Lcom/wandoujia/p4/views/CircleAsyncImageView;->a(Ljava/lang/String;I)V

    :cond_0
    invoke-virtual {p1}, Lcom/wandoujia/p4/community/card/view/CommunityNotificationCardView;->getNickName()Landroid/widget/TextView;

    move-result-object v1

    iget-object v0, p2, Lfga;->a:Lcom/wandoujia/p4/community/http/model/CommunityNotificationModel;

    invoke-virtual {v0}, Lcom/wandoujia/p4/community/http/model/CommunityNotificationModel;->getComment()Lcom/wandoujia/p4/community/http/model/CommunityReplyModel;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/wandoujia/p4/community/http/model/CommunityReplyModel;->getAuthor()Lcom/wandoujia/p4/community/http/model/CommunityUserModel;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lcom/wandoujia/p4/community/http/model/CommunityReplyModel;->getAuthor()Lcom/wandoujia/p4/community/http/model/CommunityUserModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wandoujia/p4/community/http/model/CommunityUserModel;->getNick()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Lcom/wandoujia/p4/community/card/view/CommunityNotificationCardView;->getActionName()Landroid/widget/TextView;

    move-result-object v1

    iget-object v0, p2, Lfga;->a:Lcom/wandoujia/p4/community/http/model/CommunityNotificationModel;

    invoke-virtual {v0}, Lcom/wandoujia/p4/community/http/model/CommunityNotificationModel;->getCommentType()Ljava/lang/String;

    move-result-object v0

    const-string v2, "VOTE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lesb;->a()Landroid/content/Context;

    move-result-object v0

    const v2, 0x7f0e01a6

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Lcom/wandoujia/p4/community/card/view/CommunityNotificationCardView;->getTime()Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p2, Lfga;->a:Lcom/wandoujia/p4/community/http/model/CommunityNotificationModel;

    invoke-virtual {v1}, Lcom/wandoujia/p4/community/http/model/CommunityNotificationModel;->getCreatedTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ld;->b(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p2}, Lfga;->b()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p1, v4}, Lcom/wandoujia/p4/community/card/view/CommunityNotificationCardView;->setVisibility(I)V

    invoke-virtual {p1}, Lcom/wandoujia/p4/community/card/view/CommunityNotificationCardView;->getMessage()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p2}, Lfga;->b()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_2
    invoke-virtual {p2}, Lfga;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p1}, Lcom/wandoujia/p4/community/card/view/CommunityNotificationCardView;->getReplyPic()Lcom/wandoujia/image/view/AsyncImageView;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/wandoujia/image/view/AsyncImageView;->setVisibility(I)V

    invoke-virtual {p1}, Lcom/wandoujia/p4/community/card/view/CommunityNotificationCardView;->getReplyPic()Lcom/wandoujia/image/view/AsyncImageView;

    move-result-object v0

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Lcom/wandoujia/image/view/AsyncImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    invoke-virtual {p1}, Lcom/wandoujia/p4/community/card/view/CommunityNotificationCardView;->getReplyPic()Lcom/wandoujia/image/view/AsyncImageView;

    move-result-object v0

    new-instance v1, Lffi;

    invoke-direct {v1, p2, p1}, Lffi;-><init>(Lfga;Lcom/wandoujia/p4/community/card/view/CommunityNotificationCardView;)V

    invoke-virtual {v0, v1}, Lcom/wandoujia/image/view/AsyncImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p1}, Lcom/wandoujia/p4/community/card/view/CommunityNotificationCardView;->getReplyPic()Lcom/wandoujia/image/view/AsyncImageView;

    move-result-object v0

    invoke-virtual {p2}, Lfga;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v6}, Lcom/wandoujia/image/view/AsyncImageView;->a(Ljava/lang/String;I)V

    :goto_3
    iget-object v0, p2, Lfga;->a:Lcom/wandoujia/p4/community/http/model/CommunityNotificationModel;

    invoke-virtual {v0}, Lcom/wandoujia/p4/community/http/model/CommunityNotificationModel;->getParentCommentContent()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {p1, v4}, Lcom/wandoujia/p4/community/card/view/CommunityNotificationCardView;->setVisibility(I)V

    invoke-virtual {p1}, Lcom/wandoujia/p4/community/card/view/CommunityNotificationCardView;->getReference()Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p2, Lfga;->a:Lcom/wandoujia/p4/community/http/model/CommunityNotificationModel;

    invoke-virtual {v1}, Lcom/wandoujia/p4/community/http/model/CommunityNotificationModel;->getParentCommentContent()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_4
    new-instance v0, Lffj;

    invoke-direct {v0, p2, p1}, Lffj;-><init>(Lfga;Lcom/wandoujia/p4/community/card/view/CommunityNotificationCardView;)V

    invoke-virtual {p1, v0}, Lcom/wandoujia/p4/community/card/view/CommunityNotificationCardView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_1
    const-string v0, ""

    goto/16 :goto_0

    :cond_2
    iget-object v0, p2, Lfga;->a:Lcom/wandoujia/p4/community/http/model/CommunityNotificationModel;

    invoke-virtual {v0}, Lcom/wandoujia/p4/community/http/model/CommunityNotificationModel;->getCommentType()Ljava/lang/String;

    move-result-object v0

    const-string v2, "REPLY"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lesb;->a()Landroid/content/Context;

    move-result-object v0

    const v2, 0x7f0e01a5

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :cond_3
    const/4 v0, 0x0

    goto/16 :goto_1

    :cond_4
    invoke-virtual {p1}, Lcom/wandoujia/p4/community/card/view/CommunityNotificationCardView;->getMessage()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    :cond_5
    invoke-virtual {p1}, Lcom/wandoujia/p4/community/card/view/CommunityNotificationCardView;->getReplyPic()Lcom/wandoujia/image/view/AsyncImageView;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/wandoujia/image/view/AsyncImageView;->setVisibility(I)V

    invoke-virtual {p1}, Lcom/wandoujia/p4/community/card/view/CommunityNotificationCardView;->getReplyPic()Lcom/wandoujia/image/view/AsyncImageView;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/wandoujia/image/view/AsyncImageView;->setStaticImageResource(I)V

    goto :goto_3

    :cond_6
    invoke-virtual {p1}, Lcom/wandoujia/p4/community/card/view/CommunityNotificationCardView;->getReference()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_4
.end method
