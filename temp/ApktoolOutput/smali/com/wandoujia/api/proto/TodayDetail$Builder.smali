.class public final Lcom/wandoujia/api/proto/TodayDetail$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "TodayDetail.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder",
        "<",
        "Lcom/wandoujia/api/proto/TodayDetail;",
        ">;"
    }
.end annotation


# instance fields
.field public generate_time:Ljava/lang/Long;

.field public need_prefetch:Ljava/lang/Boolean;

.field public next_time:Ljava/lang/Long;

.field public notify_time:Ljava/lang/Long;

.field public title:Ljava/lang/String;

.field public update_count:Ljava/lang/Integer;

.field public update_provider_count:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 98
    return-void
.end method

.method public constructor <init>(Lcom/wandoujia/api/proto/TodayDetail;)V
    .locals 1
    .parameter

    .prologue
    .line 101
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message$Builder;-><init>(Lcom/squareup/wire/Message;)V

    .line 102
    if-nez p1, :cond_0

    .line 110
    :goto_0
    return-void

    .line 103
    :cond_0
    iget-object v0, p1, Lcom/wandoujia/api/proto/TodayDetail;->generate_time:Ljava/lang/Long;

    iput-object v0, p0, Lcom/wandoujia/api/proto/TodayDetail$Builder;->generate_time:Ljava/lang/Long;

    .line 104
    iget-object v0, p1, Lcom/wandoujia/api/proto/TodayDetail;->next_time:Ljava/lang/Long;

    iput-object v0, p0, Lcom/wandoujia/api/proto/TodayDetail$Builder;->next_time:Ljava/lang/Long;

    .line 105
    iget-object v0, p1, Lcom/wandoujia/api/proto/TodayDetail;->notify_time:Ljava/lang/Long;

    iput-object v0, p0, Lcom/wandoujia/api/proto/TodayDetail$Builder;->notify_time:Ljava/lang/Long;

    .line 106
    iget-object v0, p1, Lcom/wandoujia/api/proto/TodayDetail;->update_count:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/wandoujia/api/proto/TodayDetail$Builder;->update_count:Ljava/lang/Integer;

    .line 107
    iget-object v0, p1, Lcom/wandoujia/api/proto/TodayDetail;->title:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/api/proto/TodayDetail$Builder;->title:Ljava/lang/String;

    .line 108
    iget-object v0, p1, Lcom/wandoujia/api/proto/TodayDetail;->need_prefetch:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/wandoujia/api/proto/TodayDetail$Builder;->need_prefetch:Ljava/lang/Boolean;

    .line 109
    iget-object v0, p1, Lcom/wandoujia/api/proto/TodayDetail;->update_provider_count:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/wandoujia/api/proto/TodayDetail$Builder;->update_provider_count:Ljava/lang/Integer;

    goto :goto_0
.end method


# virtual methods
.method public final bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .prologue
    .line 87
    invoke-virtual {p0}, Lcom/wandoujia/api/proto/TodayDetail$Builder;->build()Lcom/wandoujia/api/proto/TodayDetail;

    move-result-object v0

    return-object v0
.end method

.method public final build()Lcom/wandoujia/api/proto/TodayDetail;
    .locals 2

    .prologue
    .line 151
    new-instance v0, Lcom/wandoujia/api/proto/TodayDetail;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/wandoujia/api/proto/TodayDetail;-><init>(Lcom/wandoujia/api/proto/TodayDetail$Builder;Ld;)V

    return-object v0
.end method

.method public final generate_time(Ljava/lang/Long;)Lcom/wandoujia/api/proto/TodayDetail$Builder;
    .locals 0
    .parameter

    .prologue
    .line 113
    iput-object p1, p0, Lcom/wandoujia/api/proto/TodayDetail$Builder;->generate_time:Ljava/lang/Long;

    .line 114
    return-object p0
.end method

.method public final need_prefetch(Ljava/lang/Boolean;)Lcom/wandoujia/api/proto/TodayDetail$Builder;
    .locals 0
    .parameter

    .prologue
    .line 140
    iput-object p1, p0, Lcom/wandoujia/api/proto/TodayDetail$Builder;->need_prefetch:Ljava/lang/Boolean;

    .line 141
    return-object p0
.end method

.method public final next_time(Ljava/lang/Long;)Lcom/wandoujia/api/proto/TodayDetail$Builder;
    .locals 0
    .parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 119
    iput-object p1, p0, Lcom/wandoujia/api/proto/TodayDetail$Builder;->next_time:Ljava/lang/Long;

    .line 120
    return-object p0
.end method

.method public final notify_time(Ljava/lang/Long;)Lcom/wandoujia/api/proto/TodayDetail$Builder;
    .locals 0
    .parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 125
    iput-object p1, p0, Lcom/wandoujia/api/proto/TodayDetail$Builder;->notify_time:Ljava/lang/Long;

    .line 126
    return-object p0
.end method

.method public final title(Ljava/lang/String;)Lcom/wandoujia/api/proto/TodayDetail$Builder;
    .locals 0
    .parameter

    .prologue
    .line 135
    iput-object p1, p0, Lcom/wandoujia/api/proto/TodayDetail$Builder;->title:Ljava/lang/String;

    .line 136
    return-object p0
.end method

.method public final update_count(Ljava/lang/Integer;)Lcom/wandoujia/api/proto/TodayDetail$Builder;
    .locals 0
    .parameter

    .prologue
    .line 130
    iput-object p1, p0, Lcom/wandoujia/api/proto/TodayDetail$Builder;->update_count:Ljava/lang/Integer;

    .line 131
    return-object p0
.end method

.method public final update_provider_count(Ljava/lang/Integer;)Lcom/wandoujia/api/proto/TodayDetail$Builder;
    .locals 0
    .parameter

    .prologue
    .line 145
    iput-object p1, p0, Lcom/wandoujia/api/proto/TodayDetail$Builder;->update_provider_count:Ljava/lang/Integer;

    .line 146
    return-object p0
.end method
