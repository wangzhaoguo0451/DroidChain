.class public final Lffk;
.super Ljava/lang/Object;
.source "CommunityRankingCardController.java"

# interfaces
.implements Lcom/wandoujia/mvc/BaseController;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/wandoujia/mvc/BaseController",
        "<",
        "Lcom/wandoujia/p4/community/card/view/CommunityRankingCardView;",
        "Lfgb;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lffk;->a:Ljava/lang/String;

    .line 20
    return-void
.end method


# virtual methods
.method public final synthetic bind(Lcom/wandoujia/mvc/BaseView;Lcom/wandoujia/mvc/BaseModel;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 13
    check-cast p1, Lcom/wandoujia/p4/community/card/view/CommunityRankingCardView;

    check-cast p2, Lfgb;

    if-eqz p2, :cond_0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/wandoujia/p4/community/card/view/CommunityRankingCardView;->getAvatarView()Lcom/wandoujia/image/view/AsyncImageView;

    move-result-object v0

    invoke-virtual {p2}, Lfgb;->a()Lcom/wandoujia/p4/card/models/CardViewModel;

    move-result-object v1

    invoke-interface {v1}, Lcom/wandoujia/p4/card/models/CardViewModel;->c()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f020009

    invoke-virtual {v0, v1, v2}, Lcom/wandoujia/image/view/AsyncImageView;->a(Ljava/lang/String;I)V

    invoke-virtual {p1}, Lcom/wandoujia/p4/community/card/view/CommunityRankingCardView;->getNameView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p2}, Lfgb;->a()Lcom/wandoujia/p4/card/models/CardViewModel;

    move-result-object v1

    invoke-interface {v1}, Lcom/wandoujia/p4/card/models/CardViewModel;->g()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v0, "total"

    iget-object v1, p0, Lffk;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const v0, 0x7f0e0212

    :goto_1
    invoke-virtual {p1}, Lcom/wandoujia/p4/community/card/view/CommunityRankingCardView;->getContentView()Landroid/widget/TextView;

    move-result-object v1

    invoke-static {}, Lesb;->a()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p2}, Lfgb;->a()Lcom/wandoujia/p4/card/models/CardViewModel;

    move-result-object v5

    invoke-interface {v5}, Lcom/wandoujia/p4/card/models/CardViewModel;->f()Ljava/lang/CharSequence;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    const v0, 0x7f0e0213

    goto :goto_1
.end method
