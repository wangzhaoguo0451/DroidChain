.class public final Lcom/wandoujia/api/proto/SuggestionDetail$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "SuggestionDetail.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder",
        "<",
        "Lcom/wandoujia/api/proto/SuggestionDetail;",
        ">;"
    }
.end annotation


# instance fields
.field public deadline:Ljava/lang/Long;

.field public field:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/api/proto/MapFieldEntry;",
            ">;"
        }
    .end annotation
.end field

.field public name:Ljava/lang/String;

.field public notification_style:Ljava/lang/Integer;

.field public weight:Ljava/lang/Double;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 86
    return-void
.end method

.method public constructor <init>(Lcom/wandoujia/api/proto/SuggestionDetail;)V
    .locals 1
    .parameter

    .prologue
    .line 89
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message$Builder;-><init>(Lcom/squareup/wire/Message;)V

    .line 90
    if-nez p1, :cond_0

    .line 96
    :goto_0
    return-void

    .line 91
    :cond_0
    iget-object v0, p1, Lcom/wandoujia/api/proto/SuggestionDetail;->name:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/api/proto/SuggestionDetail$Builder;->name:Ljava/lang/String;

    .line 92
    iget-object v0, p1, Lcom/wandoujia/api/proto/SuggestionDetail;->field:Ljava/util/List;

    #calls: Lcom/wandoujia/api/proto/SuggestionDetail;->copyOf(Ljava/util/List;)Ljava/util/List;
    invoke-static {v0}, Lcom/wandoujia/api/proto/SuggestionDetail;->access$000(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/api/proto/SuggestionDetail$Builder;->field:Ljava/util/List;

    .line 93
    iget-object v0, p1, Lcom/wandoujia/api/proto/SuggestionDetail;->weight:Ljava/lang/Double;

    iput-object v0, p0, Lcom/wandoujia/api/proto/SuggestionDetail$Builder;->weight:Ljava/lang/Double;

    .line 94
    iget-object v0, p1, Lcom/wandoujia/api/proto/SuggestionDetail;->notification_style:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/wandoujia/api/proto/SuggestionDetail$Builder;->notification_style:Ljava/lang/Integer;

    .line 95
    iget-object v0, p1, Lcom/wandoujia/api/proto/SuggestionDetail;->deadline:Ljava/lang/Long;

    iput-object v0, p0, Lcom/wandoujia/api/proto/SuggestionDetail$Builder;->deadline:Ljava/lang/Long;

    goto :goto_0
.end method


# virtual methods
.method public final bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .prologue
    .line 77
    invoke-virtual {p0}, Lcom/wandoujia/api/proto/SuggestionDetail$Builder;->build()Lcom/wandoujia/api/proto/SuggestionDetail;

    move-result-object v0

    return-object v0
.end method

.method public final build()Lcom/wandoujia/api/proto/SuggestionDetail;
    .locals 2

    .prologue
    .line 128
    new-instance v0, Lcom/wandoujia/api/proto/SuggestionDetail;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/wandoujia/api/proto/SuggestionDetail;-><init>(Lcom/wandoujia/api/proto/SuggestionDetail$Builder;Ld;)V

    return-object v0
.end method

.method public final deadline(Ljava/lang/Long;)Lcom/wandoujia/api/proto/SuggestionDetail$Builder;
    .locals 0
    .parameter

    .prologue
    .line 122
    iput-object p1, p0, Lcom/wandoujia/api/proto/SuggestionDetail$Builder;->deadline:Ljava/lang/Long;

    .line 123
    return-object p0
.end method

.method public final field(Ljava/util/List;)Lcom/wandoujia/api/proto/SuggestionDetail$Builder;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/api/proto/MapFieldEntry;",
            ">;)",
            "Lcom/wandoujia/api/proto/SuggestionDetail$Builder;"
        }
    .end annotation

    .prologue
    .line 104
    invoke-static {p1}, Lcom/wandoujia/api/proto/SuggestionDetail$Builder;->checkForNulls(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/api/proto/SuggestionDetail$Builder;->field:Ljava/util/List;

    .line 105
    return-object p0
.end method

.method public final name(Ljava/lang/String;)Lcom/wandoujia/api/proto/SuggestionDetail$Builder;
    .locals 0
    .parameter

    .prologue
    .line 99
    iput-object p1, p0, Lcom/wandoujia/api/proto/SuggestionDetail$Builder;->name:Ljava/lang/String;

    .line 100
    return-object p0
.end method

.method public final notification_style(Ljava/lang/Integer;)Lcom/wandoujia/api/proto/SuggestionDetail$Builder;
    .locals 0
    .parameter

    .prologue
    .line 117
    iput-object p1, p0, Lcom/wandoujia/api/proto/SuggestionDetail$Builder;->notification_style:Ljava/lang/Integer;

    .line 118
    return-object p0
.end method

.method public final weight(Ljava/lang/Double;)Lcom/wandoujia/api/proto/SuggestionDetail$Builder;
    .locals 0
    .parameter

    .prologue
    .line 109
    iput-object p1, p0, Lcom/wandoujia/api/proto/SuggestionDetail$Builder;->weight:Ljava/lang/Double;

    .line 110
    return-object p0
.end method
