.class public final Lffv;
.super Lfbz;
.source "CommunityCampaignCardModel.java"


# instance fields
.field private final a:Lcom/wandoujia/p4/community/http/model/CommunityCampaignModel;

.field private final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/wandoujia/p4/community/http/model/CommunityCampaignModel;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 41
    invoke-direct {p0}, Lfbz;-><init>()V

    .line 42
    iput-object p1, p0, Lffv;->a:Lcom/wandoujia/p4/community/http/model/CommunityCampaignModel;

    .line 43
    iput-object p2, p0, Lffv;->b:Ljava/lang/String;

    .line 44
    return-void
.end method


# virtual methods
.method public final b(Landroid/view/View;)Lcom/wandoujia/mvc/Action;
    .locals 5
    .parameter

    .prologue
    .line 61
    new-instance v0, Lfdu;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lffv;->b:Ljava/lang/String;

    iget-object v3, p0, Lffv;->a:Lcom/wandoujia/p4/community/http/model/CommunityCampaignModel;

    invoke-virtual {v3}, Lcom/wandoujia/p4/community/http/model/CommunityCampaignModel;->getTitle()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lffv;->a:Lcom/wandoujia/p4/community/http/model/CommunityCampaignModel;

    invoke-virtual {v4}, Lcom/wandoujia/p4/community/http/model/CommunityCampaignModel;->getUrl()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lfdu;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lffv;->a:Lcom/wandoujia/p4/community/http/model/CommunityCampaignModel;

    invoke-virtual {v0}, Lcom/wandoujia/p4/community/http/model/CommunityCampaignModel;->getIcon()Lcom/wandoujia/p4/community/http/model/CommunityImageInfo;

    move-result-object v0

    if-nez v0, :cond_0

    .line 49
    const/4 v0, 0x0

    .line 51
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lffv;->a:Lcom/wandoujia/p4/community/http/model/CommunityCampaignModel;

    invoke-virtual {v0}, Lcom/wandoujia/p4/community/http/model/CommunityCampaignModel;->getIcon()Lcom/wandoujia/p4/community/http/model/CommunityImageInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/wandoujia/p4/community/http/model/CommunityImageInfo;->url:Ljava/lang/String;

    goto :goto_0
.end method

.method public final g()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lffv;->a:Lcom/wandoujia/p4/community/http/model/CommunityCampaignModel;

    invoke-virtual {v0}, Lcom/wandoujia/p4/community/http/model/CommunityCampaignModel;->getTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
