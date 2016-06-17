.class public final Lcom/wandoujia/launcher/launcher/models/ReadPercentInfo$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "ReadPercentInfo.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder",
        "<",
        "Lcom/wandoujia/launcher/launcher/models/ReadPercentInfo;",
        ">;"
    }
.end annotation


# instance fields
.field public date:Ljava/lang/String;

.field public package_name:Ljava/lang/String;

.field public package_title:Ljava/lang/String;

.field public percent:Ljava/lang/Float;

.field public read:Ljava/lang/Integer;

.field public title:Ljava/lang/String;

.field public total:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 95
    return-void
.end method

.method public constructor <init>(Lcom/wandoujia/launcher/launcher/models/ReadPercentInfo;)V
    .locals 1
    .parameter

    .prologue
    .line 98
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message$Builder;-><init>(Lcom/squareup/wire/Message;)V

    .line 99
    if-nez p1, :cond_0

    .line 107
    :goto_0
    return-void

    .line 100
    :cond_0
    iget-object v0, p1, Lcom/wandoujia/launcher/launcher/models/ReadPercentInfo;->total:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/wandoujia/launcher/launcher/models/ReadPercentInfo$Builder;->total:Ljava/lang/Integer;

    .line 101
    iget-object v0, p1, Lcom/wandoujia/launcher/launcher/models/ReadPercentInfo;->read:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/wandoujia/launcher/launcher/models/ReadPercentInfo$Builder;->read:Ljava/lang/Integer;

    .line 102
    iget-object v0, p1, Lcom/wandoujia/launcher/launcher/models/ReadPercentInfo;->date:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/launcher/launcher/models/ReadPercentInfo$Builder;->date:Ljava/lang/String;

    .line 103
    iget-object v0, p1, Lcom/wandoujia/launcher/launcher/models/ReadPercentInfo;->title:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/launcher/launcher/models/ReadPercentInfo$Builder;->title:Ljava/lang/String;

    .line 104
    iget-object v0, p1, Lcom/wandoujia/launcher/launcher/models/ReadPercentInfo;->package_name:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/launcher/launcher/models/ReadPercentInfo$Builder;->package_name:Ljava/lang/String;

    .line 105
    iget-object v0, p1, Lcom/wandoujia/launcher/launcher/models/ReadPercentInfo;->package_title:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/launcher/launcher/models/ReadPercentInfo$Builder;->package_title:Ljava/lang/String;

    .line 106
    iget-object v0, p1, Lcom/wandoujia/launcher/launcher/models/ReadPercentInfo;->percent:Ljava/lang/Float;

    iput-object v0, p0, Lcom/wandoujia/launcher/launcher/models/ReadPercentInfo$Builder;->percent:Ljava/lang/Float;

    goto :goto_0
.end method


# virtual methods
.method public final bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .prologue
    .line 84
    invoke-virtual {p0}, Lcom/wandoujia/launcher/launcher/models/ReadPercentInfo$Builder;->build()Lcom/wandoujia/launcher/launcher/models/ReadPercentInfo;

    move-result-object v0

    return-object v0
.end method

.method public final build()Lcom/wandoujia/launcher/launcher/models/ReadPercentInfo;
    .locals 2

    .prologue
    .line 146
    new-instance v0, Lcom/wandoujia/launcher/launcher/models/ReadPercentInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/wandoujia/launcher/launcher/models/ReadPercentInfo;-><init>(Lcom/wandoujia/launcher/launcher/models/ReadPercentInfo$Builder;Ld;)V

    return-object v0
.end method

.method public final date(Ljava/lang/String;)Lcom/wandoujia/launcher/launcher/models/ReadPercentInfo$Builder;
    .locals 0
    .parameter

    .prologue
    .line 120
    iput-object p1, p0, Lcom/wandoujia/launcher/launcher/models/ReadPercentInfo$Builder;->date:Ljava/lang/String;

    .line 121
    return-object p0
.end method

.method public final package_name(Ljava/lang/String;)Lcom/wandoujia/launcher/launcher/models/ReadPercentInfo$Builder;
    .locals 0
    .parameter

    .prologue
    .line 130
    iput-object p1, p0, Lcom/wandoujia/launcher/launcher/models/ReadPercentInfo$Builder;->package_name:Ljava/lang/String;

    .line 131
    return-object p0
.end method

.method public final package_title(Ljava/lang/String;)Lcom/wandoujia/launcher/launcher/models/ReadPercentInfo$Builder;
    .locals 0
    .parameter

    .prologue
    .line 135
    iput-object p1, p0, Lcom/wandoujia/launcher/launcher/models/ReadPercentInfo$Builder;->package_title:Ljava/lang/String;

    .line 136
    return-object p0
.end method

.method public final percent(Ljava/lang/Float;)Lcom/wandoujia/launcher/launcher/models/ReadPercentInfo$Builder;
    .locals 0
    .parameter

    .prologue
    .line 140
    iput-object p1, p0, Lcom/wandoujia/launcher/launcher/models/ReadPercentInfo$Builder;->percent:Ljava/lang/Float;

    .line 141
    return-object p0
.end method

.method public final read(Ljava/lang/Integer;)Lcom/wandoujia/launcher/launcher/models/ReadPercentInfo$Builder;
    .locals 0
    .parameter

    .prologue
    .line 115
    iput-object p1, p0, Lcom/wandoujia/launcher/launcher/models/ReadPercentInfo$Builder;->read:Ljava/lang/Integer;

    .line 116
    return-object p0
.end method

.method public final title(Ljava/lang/String;)Lcom/wandoujia/launcher/launcher/models/ReadPercentInfo$Builder;
    .locals 0
    .parameter

    .prologue
    .line 125
    iput-object p1, p0, Lcom/wandoujia/launcher/launcher/models/ReadPercentInfo$Builder;->title:Ljava/lang/String;

    .line 126
    return-object p0
.end method

.method public final total(Ljava/lang/Integer;)Lcom/wandoujia/launcher/launcher/models/ReadPercentInfo$Builder;
    .locals 0
    .parameter

    .prologue
    .line 110
    iput-object p1, p0, Lcom/wandoujia/launcher/launcher/models/ReadPercentInfo$Builder;->total:Ljava/lang/Integer;

    .line 111
    return-object p0
.end method
