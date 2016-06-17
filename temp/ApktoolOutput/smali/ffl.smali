.class public final Lffl;
.super Ljava/lang/Object;
.source "CommunityReplyCardViewController.java"

# interfaces
.implements Lcom/wandoujia/mvc/BaseController;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/wandoujia/mvc/BaseController",
        "<",
        "Lcom/wandoujia/p4/community/card/view/CommunityReplyCardView;",
        "Lfgd;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Lcom/wandoujia/p4/community/http/model/CommunityTopicModel;

.field private b:Landroid/app/Activity;

.field private c:Lfgd;


# direct methods
.method public constructor <init>(Lcom/wandoujia/p4/community/http/model/CommunityTopicModel;Landroid/app/Activity;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p2, p0, Lffl;->b:Landroid/app/Activity;

    .line 47
    iput-object p1, p0, Lffl;->a:Lcom/wandoujia/p4/community/http/model/CommunityTopicModel;

    .line 48
    return-void
.end method

.method static synthetic a(Lffl;)Lcom/wandoujia/p4/community/http/model/CommunityTopicModel;
    .locals 1
    .parameter

    .prologue
    .line 38
    iget-object v0, p0, Lffl;->a:Lcom/wandoujia/p4/community/http/model/CommunityTopicModel;

    return-object v0
.end method

.method static synthetic b(Lffl;)Landroid/app/Activity;
    .locals 1
    .parameter

    .prologue
    .line 38
    iget-object v0, p0, Lffl;->b:Landroid/app/Activity;

    return-object v0
.end method


# virtual methods
.method public final synthetic bind(Lcom/wandoujia/mvc/BaseView;Lcom/wandoujia/mvc/BaseModel;)V
    .locals 9
    .parameter
    .parameter

    .prologue
    const v8, 0x7f0a0044

    const/4 v7, 0x1

    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 38
    check-cast p1, Lcom/wandoujia/p4/community/card/view/CommunityReplyCardView;

    check-cast p2, Lfgd;

    iget-object v0, p0, Lffl;->c:Lfgd;

    if-eq v0, p2, :cond_0

    iput-object p2, p0, Lffl;->c:Lfgd;

    invoke-virtual {p1}, Lcom/wandoujia/p4/community/card/view/CommunityReplyCardView;->getCardView()Lfca;

    move-result-object v0

    invoke-virtual {v0}, Lfca;->c()Lcom/wandoujia/image/view/AsyncImageView;

    move-result-object v0

    invoke-virtual {p2}, Lfgd;->a()Lcom/wandoujia/p4/card/models/CardViewModel;

    move-result-object v1

    invoke-interface {v1}, Lcom/wandoujia/p4/card/models/CardViewModel;->c()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0201e7

    invoke-virtual {v0, v1, v2}, Lcom/wandoujia/image/view/AsyncImageView;->a(Ljava/lang/String;I)V

    invoke-virtual {p1}, Lcom/wandoujia/p4/community/card/view/CommunityReplyCardView;->getCardView()Lfca;

    move-result-object v0

    invoke-virtual {v0}, Lfca;->a()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p2}, Lfgd;->a()Lcom/wandoujia/p4/card/models/CardViewModel;

    move-result-object v1

    invoke-interface {v1}, Lcom/wandoujia/p4/card/models/CardViewModel;->g()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Lcom/wandoujia/p4/community/card/view/CommunityReplyCardView;->getCardView()Lfca;

    move-result-object v0

    invoke-virtual {v0}, Lfca;->b()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p2}, Lfgd;->a()Lcom/wandoujia/p4/card/models/CardViewModel;

    move-result-object v1

    invoke-interface {v1}, Lcom/wandoujia/p4/card/models/CardViewModel;->a()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p2, Lfgd;->a:Lcom/wandoujia/p4/community/http/model/CommunityReplyModel;

    invoke-virtual {p1}, Lcom/wandoujia/p4/community/card/view/CommunityReplyCardView;->getSequenceView()Landroid/widget/TextView;

    move-result-object v1

    invoke-static {}, Lesb;->a()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0e0227

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v7, [Ljava/lang/Object;

    iget-object v4, p2, Lfgd;->a:Lcom/wandoujia/p4/community/http/model/CommunityReplyModel;

    invoke-virtual {v4}, Lcom/wandoujia/p4/community/http/model/CommunityReplyModel;->getSequence()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p2, Lfgd;->a:Lcom/wandoujia/p4/community/http/model/CommunityReplyModel;

    invoke-virtual {v1}, Lcom/wandoujia/p4/community/http/model/CommunityReplyModel;->getAuthor()Lcom/wandoujia/p4/community/http/model/CommunityUserModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wandoujia/p4/community/http/model/CommunityUserModel;->isAdmin()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Lcom/wandoujia/p4/community/card/view/CommunityReplyCardView;->getRoleView()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {p1}, Lcom/wandoujia/p4/community/card/view/CommunityReplyCardView;->getRoleView()Landroid/widget/TextView;

    move-result-object v1

    const v2, 0x7f0e0223

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    :goto_0
    invoke-virtual {v0}, Lcom/wandoujia/p4/community/http/model/CommunityReplyModel;->getPicture()Lcom/wandoujia/p4/community/http/model/CommunityImageInfo;

    move-result-object v1

    invoke-virtual {p1}, Lcom/wandoujia/p4/community/card/view/CommunityReplyCardView;->getReplyImageView()Lcom/wandoujia/p4/community/views/CommunityAttachedReloadImageView;

    move-result-object v2

    if-eqz v1, :cond_3

    iget-object v3, v1, Lcom/wandoujia/p4/community/http/model/CommunityImageInfo;->url:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {v2, v5}, Lcom/wandoujia/p4/community/views/CommunityAttachedReloadImageView;->setVisibility(I)V

    sget-object v3, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v3}, Lcom/wandoujia/p4/community/views/CommunityAttachedReloadImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v3, v1, Lcom/wandoujia/p4/community/http/model/CommunityImageInfo;->url:Ljava/lang/String;

    invoke-virtual {v2, v3, v8}, Lcom/wandoujia/p4/community/views/CommunityAttachedReloadImageView;->a(Ljava/lang/String;I)V

    new-instance v3, Lffm;

    invoke-direct {v3, v1, p1}, Lffm;-><init>(Lcom/wandoujia/p4/community/http/model/CommunityImageInfo;Lcom/wandoujia/p4/community/card/view/CommunityReplyCardView;)V

    invoke-virtual {v2, v3}, Lcom/wandoujia/p4/community/views/CommunityAttachedReloadImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_1
    invoke-virtual {p1}, Lcom/wandoujia/p4/community/card/view/CommunityReplyCardView;->getReplyTimeView()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0}, Lcom/wandoujia/p4/community/http/model/CommunityReplyModel;->getCreatTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ld;->b(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Lcom/wandoujia/p4/community/http/model/CommunityReplyModel;->getParentReply()Lcom/wandoujia/p4/community/http/model/CommunityReplyModel;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {p1}, Lcom/wandoujia/p4/community/card/view/CommunityReplyCardView;->getReferenceBg()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p1}, Lcom/wandoujia/p4/community/card/view/CommunityReplyCardView;->getReference()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {v0}, Lcom/wandoujia/p4/community/http/model/CommunityReplyModel;->getParentReply()Lcom/wandoujia/p4/community/http/model/CommunityReplyModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wandoujia/p4/community/http/model/CommunityReplyModel;->isReplyDeleted()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-static {}, Lesb;->a()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0e0219

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/wandoujia/p4/community/http/model/CommunityReplyModel;->getParentReply()Lcom/wandoujia/p4/community/http/model/CommunityReplyModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/wandoujia/p4/community/http/model/CommunityReplyModel;->getAuthor()Lcom/wandoujia/p4/community/http/model/CommunityUserModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/wandoujia/p4/community/http/model/CommunityUserModel;->getNick()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v0}, Lcom/wandoujia/p4/community/http/model/CommunityReplyModel;->getParentReply()Lcom/wandoujia/p4/community/http/model/CommunityReplyModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/wandoujia/p4/community/http/model/CommunityReplyModel;->getMessage()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v7

    const/4 v3, 0x2

    invoke-virtual {v0}, Lcom/wandoujia/p4/community/http/model/CommunityReplyModel;->getParentReply()Lcom/wandoujia/p4/community/http/model/CommunityReplyModel;

    move-result-object v4

    invoke-virtual {v4}, Lcom/wandoujia/p4/community/http/model/CommunityReplyModel;->getSequence()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/wandoujia/p4/community/card/view/CommunityReplyCardView;->getReference()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_2
    new-instance v1, Lffn;

    invoke-direct {v1, p0, v0}, Lffn;-><init>(Lffl;Lcom/wandoujia/p4/community/http/model/CommunityReplyModel;)V

    invoke-virtual {p1, v1}, Lcom/wandoujia/p4/community/card/view/CommunityReplyCardView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void

    :cond_1
    invoke-virtual {v1}, Lcom/wandoujia/p4/community/http/model/CommunityUserModel;->isOwner()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lcom/wandoujia/p4/community/card/view/CommunityReplyCardView;->getRoleView()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {p1}, Lcom/wandoujia/p4/community/card/view/CommunityReplyCardView;->getRoleView()Landroid/widget/TextView;

    move-result-object v1

    const v2, 0x7f0e0224

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/wandoujia/p4/community/card/view/CommunityReplyCardView;->getRoleView()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    :cond_3
    invoke-virtual {v2, v6}, Lcom/wandoujia/p4/community/views/CommunityAttachedReloadImageView;->setVisibility(I)V

    invoke-virtual {v2, v8}, Lcom/wandoujia/p4/community/views/CommunityAttachedReloadImageView;->setStaticImageResource(I)V

    goto/16 :goto_1

    :cond_4
    invoke-virtual {p1}, Lcom/wandoujia/p4/community/card/view/CommunityReplyCardView;->getReference()Landroid/widget/TextView;

    move-result-object v1

    invoke-static {}, Lesb;->a()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0e01c8

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v7, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/wandoujia/p4/community/http/model/CommunityReplyModel;->getParentReply()Lcom/wandoujia/p4/community/http/model/CommunityReplyModel;

    move-result-object v4

    invoke-virtual {v4}, Lcom/wandoujia/p4/community/http/model/CommunityReplyModel;->getSequence()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_5
    invoke-virtual {p1}, Lcom/wandoujia/p4/community/card/view/CommunityReplyCardView;->getReferenceBg()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p1}, Lcom/wandoujia/p4/community/card/view/CommunityReplyCardView;->getReference()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2
.end method
