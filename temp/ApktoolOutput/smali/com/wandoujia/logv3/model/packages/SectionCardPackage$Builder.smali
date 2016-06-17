.class public final Lcom/wandoujia/logv3/model/packages/SectionCardPackage$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "SectionCardPackage.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder",
        "<",
        "Lcom/wandoujia/logv3/model/packages/SectionCardPackage;",
        ">;"
    }
.end annotation


# instance fields
.field public section_card_id:Ljava/lang/String;

.field public section_extra:Ljava/lang/String;

.field public section_id:Ljava/lang/String;

.field public section_index:Ljava/lang/Integer;

.field public section_title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 93
    return-void
.end method

.method public constructor <init>(Lcom/wandoujia/logv3/model/packages/SectionCardPackage;)V
    .locals 1
    .parameter

    .prologue
    .line 96
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message$Builder;-><init>(Lcom/squareup/wire/Message;)V

    .line 97
    if-nez p1, :cond_0

    .line 103
    :goto_0
    return-void

    .line 98
    :cond_0
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/SectionCardPackage;->section_id:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/SectionCardPackage$Builder;->section_id:Ljava/lang/String;

    .line 99
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/SectionCardPackage;->section_title:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/SectionCardPackage$Builder;->section_title:Ljava/lang/String;

    .line 100
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/SectionCardPackage;->section_index:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/SectionCardPackage$Builder;->section_index:Ljava/lang/Integer;

    .line 101
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/SectionCardPackage;->section_card_id:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/SectionCardPackage$Builder;->section_card_id:Ljava/lang/String;

    .line 102
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/SectionCardPackage;->section_extra:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/SectionCardPackage$Builder;->section_extra:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public final bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .prologue
    .line 84
    invoke-virtual {p0}, Lcom/wandoujia/logv3/model/packages/SectionCardPackage$Builder;->build()Lcom/wandoujia/logv3/model/packages/SectionCardPackage;

    move-result-object v0

    return-object v0
.end method

.method public final build()Lcom/wandoujia/logv3/model/packages/SectionCardPackage;
    .locals 2

    .prologue
    .line 147
    new-instance v0, Lcom/wandoujia/logv3/model/packages/SectionCardPackage;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/wandoujia/logv3/model/packages/SectionCardPackage;-><init>(Lcom/wandoujia/logv3/model/packages/SectionCardPackage$Builder;Ld;)V

    return-object v0
.end method

.method public final section_card_id(Ljava/lang/String;)Lcom/wandoujia/logv3/model/packages/SectionCardPackage$Builder;
    .locals 0
    .parameter

    .prologue
    .line 133
    iput-object p1, p0, Lcom/wandoujia/logv3/model/packages/SectionCardPackage$Builder;->section_card_id:Ljava/lang/String;

    .line 134
    return-object p0
.end method

.method public final section_extra(Ljava/lang/String;)Lcom/wandoujia/logv3/model/packages/SectionCardPackage$Builder;
    .locals 0
    .parameter

    .prologue
    .line 141
    iput-object p1, p0, Lcom/wandoujia/logv3/model/packages/SectionCardPackage$Builder;->section_extra:Ljava/lang/String;

    .line 142
    return-object p0
.end method

.method public final section_id(Ljava/lang/String;)Lcom/wandoujia/logv3/model/packages/SectionCardPackage$Builder;
    .locals 0
    .parameter

    .prologue
    .line 109
    iput-object p1, p0, Lcom/wandoujia/logv3/model/packages/SectionCardPackage$Builder;->section_id:Ljava/lang/String;

    .line 110
    return-object p0
.end method

.method public final section_index(Ljava/lang/Integer;)Lcom/wandoujia/logv3/model/packages/SectionCardPackage$Builder;
    .locals 0
    .parameter

    .prologue
    .line 125
    iput-object p1, p0, Lcom/wandoujia/logv3/model/packages/SectionCardPackage$Builder;->section_index:Ljava/lang/Integer;

    .line 126
    return-object p0
.end method

.method public final section_title(Ljava/lang/String;)Lcom/wandoujia/logv3/model/packages/SectionCardPackage$Builder;
    .locals 0
    .parameter

    .prologue
    .line 117
    iput-object p1, p0, Lcom/wandoujia/logv3/model/packages/SectionCardPackage$Builder;->section_title:Ljava/lang/String;

    .line 118
    return-object p0
.end method
