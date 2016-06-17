.class public Lcom/wandoujia/p4/community/http/model/CommunityCampaignModel;
.super Ljava/lang/Object;
.source "CommunityCampaignModel.java"

# interfaces
.implements Lcom/wandoujia/mvc/BaseModel;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x16a688c62991bd8aL


# instance fields
.field private icon:Lcom/wandoujia/p4/community/http/model/CommunityImageInfo;

.field private id:Ljava/lang/String;

.field private title:Ljava/lang/String;

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getIcon()Lcom/wandoujia/p4/community/http/model/CommunityImageInfo;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/wandoujia/p4/community/http/model/CommunityCampaignModel;->icon:Lcom/wandoujia/p4/community/http/model/CommunityImageInfo;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/wandoujia/p4/community/http/model/CommunityCampaignModel;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/wandoujia/p4/community/http/model/CommunityCampaignModel;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/wandoujia/p4/community/http/model/CommunityCampaignModel;->url:Ljava/lang/String;

    return-object v0
.end method
