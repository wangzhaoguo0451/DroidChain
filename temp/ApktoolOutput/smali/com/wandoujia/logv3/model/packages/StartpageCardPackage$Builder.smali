.class public final Lcom/wandoujia/logv3/model/packages/StartpageCardPackage$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "StartpageCardPackage.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder",
        "<",
        "Lcom/wandoujia/logv3/model/packages/StartpageCardPackage;",
        ">;"
    }
.end annotation


# instance fields
.field public startpage_card_feed_name:Ljava/lang/String;

.field public startpage_card_id:Ljava/lang/String;

.field public startpage_card_template:Ljava/lang/String;

.field public startpage_sub_card_list:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 84
    return-void
.end method

.method public constructor <init>(Lcom/wandoujia/logv3/model/packages/StartpageCardPackage;)V
    .locals 1
    .parameter

    .prologue
    .line 87
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message$Builder;-><init>(Lcom/squareup/wire/Message;)V

    .line 88
    if-nez p1, :cond_0

    .line 93
    :goto_0
    return-void

    .line 89
    :cond_0
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/StartpageCardPackage;->startpage_card_feed_name:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/StartpageCardPackage$Builder;->startpage_card_feed_name:Ljava/lang/String;

    .line 90
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/StartpageCardPackage;->startpage_card_template:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/StartpageCardPackage$Builder;->startpage_card_template:Ljava/lang/String;

    .line 91
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/StartpageCardPackage;->startpage_card_id:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/StartpageCardPackage$Builder;->startpage_card_id:Ljava/lang/String;

    .line 92
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/StartpageCardPackage;->startpage_sub_card_list:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/StartpageCardPackage$Builder;->startpage_sub_card_list:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public final bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .prologue
    .line 76
    invoke-virtual {p0}, Lcom/wandoujia/logv3/model/packages/StartpageCardPackage$Builder;->build()Lcom/wandoujia/logv3/model/packages/StartpageCardPackage;

    move-result-object v0

    return-object v0
.end method

.method public final build()Lcom/wandoujia/logv3/model/packages/StartpageCardPackage;
    .locals 2

    .prologue
    .line 129
    new-instance v0, Lcom/wandoujia/logv3/model/packages/StartpageCardPackage;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/wandoujia/logv3/model/packages/StartpageCardPackage;-><init>(Lcom/wandoujia/logv3/model/packages/StartpageCardPackage$Builder;Ld;)V

    return-object v0
.end method

.method public final startpage_card_feed_name(Ljava/lang/String;)Lcom/wandoujia/logv3/model/packages/StartpageCardPackage$Builder;
    .locals 0
    .parameter

    .prologue
    .line 99
    iput-object p1, p0, Lcom/wandoujia/logv3/model/packages/StartpageCardPackage$Builder;->startpage_card_feed_name:Ljava/lang/String;

    .line 100
    return-object p0
.end method

.method public final startpage_card_id(Ljava/lang/String;)Lcom/wandoujia/logv3/model/packages/StartpageCardPackage$Builder;
    .locals 0
    .parameter

    .prologue
    .line 115
    iput-object p1, p0, Lcom/wandoujia/logv3/model/packages/StartpageCardPackage$Builder;->startpage_card_id:Ljava/lang/String;

    .line 116
    return-object p0
.end method

.method public final startpage_card_template(Ljava/lang/String;)Lcom/wandoujia/logv3/model/packages/StartpageCardPackage$Builder;
    .locals 0
    .parameter

    .prologue
    .line 107
    iput-object p1, p0, Lcom/wandoujia/logv3/model/packages/StartpageCardPackage$Builder;->startpage_card_template:Ljava/lang/String;

    .line 108
    return-object p0
.end method

.method public final startpage_sub_card_list(Ljava/lang/String;)Lcom/wandoujia/logv3/model/packages/StartpageCardPackage$Builder;
    .locals 0
    .parameter

    .prologue
    .line 123
    iput-object p1, p0, Lcom/wandoujia/logv3/model/packages/StartpageCardPackage$Builder;->startpage_sub_card_list:Ljava/lang/String;

    .line 124
    return-object p0
.end method
