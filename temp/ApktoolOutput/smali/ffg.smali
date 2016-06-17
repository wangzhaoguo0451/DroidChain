.class public final Lffg;
.super Ljava/lang/Object;
.source "CommunityMemberCardController.java"

# interfaces
.implements Lcom/wandoujia/mvc/BaseController;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/wandoujia/mvc/BaseController",
        "<",
        "Lcom/wandoujia/p4/community/card/view/CommunityMemberCardView;",
        "Lffy;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lcom/wandoujia/p4/community/http/model/CommunityGroupModel;


# direct methods
.method public constructor <init>(Lcom/wandoujia/p4/community/http/model/CommunityGroupModel;)V
    .locals 0
    .parameter

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lffg;->a:Lcom/wandoujia/p4/community/http/model/CommunityGroupModel;

    .line 27
    return-void
.end method


# virtual methods
.method public final synthetic bind(Lcom/wandoujia/mvc/BaseView;Lcom/wandoujia/mvc/BaseModel;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 20
    check-cast p1, Lcom/wandoujia/p4/community/card/view/CommunityMemberCardView;

    check-cast p2, Lffy;

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    iget-object v0, p2, Lffy;->d:Lcom/wandoujia/p4/community/http/model/CommunityUserModel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lffg;->a:Lcom/wandoujia/p4/community/http/model/CommunityGroupModel;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p2, Lffy;->d:Lcom/wandoujia/p4/community/http/model/CommunityUserModel;

    invoke-virtual {p1}, Lcom/wandoujia/p4/community/card/view/CommunityMemberCardView;->getAvatarView()Lcom/wandoujia/image/view/AsyncImageView;

    move-result-object v1

    invoke-virtual {p2}, Lffy;->a()Lcom/wandoujia/p4/card/models/CardViewModel;

    move-result-object v2

    invoke-interface {v2}, Lcom/wandoujia/p4/card/models/CardViewModel;->c()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f020009

    invoke-virtual {v1, v2, v3}, Lcom/wandoujia/image/view/AsyncImageView;->a(Ljava/lang/String;I)V

    invoke-virtual {p1}, Lcom/wandoujia/p4/community/card/view/CommunityMemberCardView;->getNameView()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {p2}, Lffy;->a()Lcom/wandoujia/p4/card/models/CardViewModel;

    move-result-object v2

    invoke-interface {v2}, Lcom/wandoujia/p4/card/models/CardViewModel;->g()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Lcom/wandoujia/p4/community/card/view/CommunityMemberCardView;->getContentView()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {p2}, Lffy;->a()Lcom/wandoujia/p4/card/models/CardViewModel;

    move-result-object v2

    invoke-interface {v2}, Lcom/wandoujia/p4/card/models/CardViewModel;->f()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p2}, Lffy;->a()Lcom/wandoujia/p4/card/models/CardViewModel;

    move-result-object v1

    invoke-virtual {p1}, Lcom/wandoujia/p4/community/card/view/CommunityMemberCardView;->getSubActionButton()Lcom/wandoujia/p4/button/views/SubActionButton;

    invoke-interface {v1}, Lcom/wandoujia/p4/card/models/CardViewModel;->d()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_2
    invoke-virtual {p1}, Lcom/wandoujia/p4/community/card/view/CommunityMemberCardView;->getSubActionButton()Lcom/wandoujia/p4/button/views/SubActionButton;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/wandoujia/p4/button/views/SubActionButton;->setVisibility(I)V

    :goto_1
    invoke-virtual {p1}, Lcom/wandoujia/p4/community/card/view/CommunityMemberCardView;->getRoleLabelView()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {p1}, Lcom/wandoujia/p4/community/card/view/CommunityMemberCardView;->getSelfLabelView()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lffg;->a:Lcom/wandoujia/p4/community/http/model/CommunityGroupModel;

    invoke-virtual {v1}, Lcom/wandoujia/p4/community/http/model/CommunityGroupModel;->getAuthor()Lcom/wandoujia/p4/community/http/model/CommunityUserModel;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/wandoujia/p4/community/http/model/CommunityUserModel;->getUid()Ljava/lang/Long;

    move-result-object v1

    iget-object v2, p0, Lffg;->a:Lcom/wandoujia/p4/community/http/model/CommunityGroupModel;

    invoke-virtual {v2}, Lcom/wandoujia/p4/community/http/model/CommunityGroupModel;->getAuthor()Lcom/wandoujia/p4/community/http/model/CommunityUserModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/wandoujia/p4/community/http/model/CommunityUserModel;->getUid()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Lcom/wandoujia/p4/community/card/view/CommunityMemberCardView;->getRoleLabelView()Landroid/widget/TextView;

    move-result-object v1

    const v2, 0x7f0e0224

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {p1}, Lcom/wandoujia/p4/community/card/view/CommunityMemberCardView;->getRoleLabelView()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_3
    const-string v1, "GROUP_ADMIN"

    invoke-virtual {v0}, Lcom/wandoujia/p4/community/http/model/CommunityUserModel;->getRole()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p1}, Lcom/wandoujia/p4/community/card/view/CommunityMemberCardView;->getRoleLabelView()Landroid/widget/TextView;

    move-result-object v1

    const v2, 0x7f0e0223

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {p1}, Lcom/wandoujia/p4/community/card/view/CommunityMemberCardView;->getRoleLabelView()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_4
    invoke-static {}, Lchv;->z()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/wandoujia/p4/community/http/model/CommunityUserModel;->getUid()Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lchv;->t()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/wandoujia/p4/community/card/view/CommunityMemberCardView;->getSelfLabelView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    :cond_5
    invoke-virtual {p1}, Lcom/wandoujia/p4/community/card/view/CommunityMemberCardView;->getSubActionButton()Lcom/wandoujia/p4/button/views/SubActionButton;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/wandoujia/p4/button/views/SubActionButton;->setVisibility(I)V

    invoke-virtual {p1}, Lcom/wandoujia/p4/community/card/view/CommunityMemberCardView;->getSubActionButton()Lcom/wandoujia/p4/button/views/SubActionButton;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/wandoujia/p4/button/views/SubActionButton;->setData(Ljava/util/List;)V

    goto/16 :goto_1
.end method
