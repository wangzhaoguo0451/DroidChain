.class public final Lffe;
.super Ljava/lang/Object;
.source "CommunityCampaignCardController.java"

# interfaces
.implements Lcom/wandoujia/mvc/BaseController;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/wandoujia/mvc/BaseController",
        "<",
        "Lcom/wandoujia/p4/community/card/view/CommunityCampaignItemView;",
        "Lffu;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/wandoujia/p4/community/card/view/CommunityCampaignItemView;Lffu;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 16
    new-instance v0, Lfbv;

    invoke-direct {v0}, Lfbv;-><init>()V

    .line 17
    invoke-virtual {p0}, Lcom/wandoujia/p4/community/card/view/CommunityCampaignItemView;->getCardView()Lfca;

    move-result-object v0

    new-instance v1, Lffv;

    iget-object v2, p1, Lffu;->b:Lcom/wandoujia/p4/community/http/model/CommunityCampaignModel;

    iget-object v3, p1, Lffu;->a:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lffv;-><init>(Lcom/wandoujia/p4/community/http/model/CommunityCampaignModel;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lfbv;->a(Lfca;Lcom/wandoujia/p4/card/models/CardViewModel;)V

    .line 18
    return-void
.end method


# virtual methods
.method public final synthetic bind(Lcom/wandoujia/mvc/BaseView;Lcom/wandoujia/mvc/BaseModel;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 11
    check-cast p1, Lcom/wandoujia/p4/community/card/view/CommunityCampaignItemView;

    check-cast p2, Lffu;

    invoke-static {p1, p2}, Lffe;->a(Lcom/wandoujia/p4/community/card/view/CommunityCampaignItemView;Lffu;)V

    return-void
.end method
