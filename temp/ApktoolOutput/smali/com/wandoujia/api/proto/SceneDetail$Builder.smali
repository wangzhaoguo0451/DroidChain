.class public final Lcom/wandoujia/api/proto/SceneDetail$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "SceneDetail.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder",
        "<",
        "Lcom/wandoujia/api/proto/SceneDetail;",
        ">;"
    }
.end annotation


# instance fields
.field public entry_icon:Ljava/lang/String;

.field public entry_icon_pressed:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public next_update:Ljava/lang/Long;

.field public plot_description:Lcom/wandoujia/api/proto/CountDownText;

.field public valid:Ljava/lang/Boolean;

.field public weight:Ljava/lang/Double;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 99
    return-void
.end method

.method public constructor <init>(Lcom/wandoujia/api/proto/SceneDetail;)V
    .locals 1
    .parameter

    .prologue
    .line 102
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message$Builder;-><init>(Lcom/squareup/wire/Message;)V

    .line 103
    if-nez p1, :cond_0

    .line 111
    :goto_0
    return-void

    .line 104
    :cond_0
    iget-object v0, p1, Lcom/wandoujia/api/proto/SceneDetail;->name:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/api/proto/SceneDetail$Builder;->name:Ljava/lang/String;

    .line 105
    iget-object v0, p1, Lcom/wandoujia/api/proto/SceneDetail;->valid:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/wandoujia/api/proto/SceneDetail$Builder;->valid:Ljava/lang/Boolean;

    .line 106
    iget-object v0, p1, Lcom/wandoujia/api/proto/SceneDetail;->next_update:Ljava/lang/Long;

    iput-object v0, p0, Lcom/wandoujia/api/proto/SceneDetail$Builder;->next_update:Ljava/lang/Long;

    .line 107
    iget-object v0, p1, Lcom/wandoujia/api/proto/SceneDetail;->weight:Ljava/lang/Double;

    iput-object v0, p0, Lcom/wandoujia/api/proto/SceneDetail$Builder;->weight:Ljava/lang/Double;

    .line 108
    iget-object v0, p1, Lcom/wandoujia/api/proto/SceneDetail;->plot_description:Lcom/wandoujia/api/proto/CountDownText;

    iput-object v0, p0, Lcom/wandoujia/api/proto/SceneDetail$Builder;->plot_description:Lcom/wandoujia/api/proto/CountDownText;

    .line 109
    iget-object v0, p1, Lcom/wandoujia/api/proto/SceneDetail;->entry_icon:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/api/proto/SceneDetail$Builder;->entry_icon:Ljava/lang/String;

    .line 110
    iget-object v0, p1, Lcom/wandoujia/api/proto/SceneDetail;->entry_icon_pressed:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/api/proto/SceneDetail$Builder;->entry_icon_pressed:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public final bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .prologue
    .line 88
    invoke-virtual {p0}, Lcom/wandoujia/api/proto/SceneDetail$Builder;->build()Lcom/wandoujia/api/proto/SceneDetail;

    move-result-object v0

    return-object v0
.end method

.method public final build()Lcom/wandoujia/api/proto/SceneDetail;
    .locals 2

    .prologue
    .line 153
    invoke-virtual {p0}, Lcom/wandoujia/api/proto/SceneDetail$Builder;->checkRequiredFields()V

    .line 154
    new-instance v0, Lcom/wandoujia/api/proto/SceneDetail;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/wandoujia/api/proto/SceneDetail;-><init>(Lcom/wandoujia/api/proto/SceneDetail$Builder;Ld;)V

    return-object v0
.end method

.method public final entry_icon(Ljava/lang/String;)Lcom/wandoujia/api/proto/SceneDetail$Builder;
    .locals 0
    .parameter

    .prologue
    .line 142
    iput-object p1, p0, Lcom/wandoujia/api/proto/SceneDetail$Builder;->entry_icon:Ljava/lang/String;

    .line 143
    return-object p0
.end method

.method public final entry_icon_pressed(Ljava/lang/String;)Lcom/wandoujia/api/proto/SceneDetail$Builder;
    .locals 0
    .parameter

    .prologue
    .line 147
    iput-object p1, p0, Lcom/wandoujia/api/proto/SceneDetail$Builder;->entry_icon_pressed:Ljava/lang/String;

    .line 148
    return-object p0
.end method

.method public final name(Ljava/lang/String;)Lcom/wandoujia/api/proto/SceneDetail$Builder;
    .locals 0
    .parameter

    .prologue
    .line 114
    iput-object p1, p0, Lcom/wandoujia/api/proto/SceneDetail$Builder;->name:Ljava/lang/String;

    .line 115
    return-object p0
.end method

.method public final next_update(Ljava/lang/Long;)Lcom/wandoujia/api/proto/SceneDetail$Builder;
    .locals 0
    .parameter

    .prologue
    .line 124
    iput-object p1, p0, Lcom/wandoujia/api/proto/SceneDetail$Builder;->next_update:Ljava/lang/Long;

    .line 125
    return-object p0
.end method

.method public final plot_description(Lcom/wandoujia/api/proto/CountDownText;)Lcom/wandoujia/api/proto/SceneDetail$Builder;
    .locals 0
    .parameter

    .prologue
    .line 134
    iput-object p1, p0, Lcom/wandoujia/api/proto/SceneDetail$Builder;->plot_description:Lcom/wandoujia/api/proto/CountDownText;

    .line 135
    return-object p0
.end method

.method public final valid(Ljava/lang/Boolean;)Lcom/wandoujia/api/proto/SceneDetail$Builder;
    .locals 0
    .parameter

    .prologue
    .line 119
    iput-object p1, p0, Lcom/wandoujia/api/proto/SceneDetail$Builder;->valid:Ljava/lang/Boolean;

    .line 120
    return-object p0
.end method

.method public final weight(Ljava/lang/Double;)Lcom/wandoujia/api/proto/SceneDetail$Builder;
    .locals 0
    .parameter

    .prologue
    .line 129
    iput-object p1, p0, Lcom/wandoujia/api/proto/SceneDetail$Builder;->weight:Ljava/lang/Double;

    .line 130
    return-object p0
.end method
