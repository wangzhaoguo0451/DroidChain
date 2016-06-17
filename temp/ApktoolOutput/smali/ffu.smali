.class public final Lffu;
.super Ljava/lang/Object;
.source "CommunityCampaignCardModel.java"

# interfaces
.implements Lfby;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lfby",
        "<",
        "Lcom/wandoujia/p4/community/http/model/CommunityCampaignModel;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lcom/wandoujia/p4/community/http/model/CommunityCampaignModel;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/wandoujia/p4/community/http/model/CommunityCampaignModel;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lffu;->a:Ljava/lang/String;

    .line 23
    iput-object p2, p0, Lffu;->b:Lcom/wandoujia/p4/community/http/model/CommunityCampaignModel;

    .line 24
    return-void
.end method
