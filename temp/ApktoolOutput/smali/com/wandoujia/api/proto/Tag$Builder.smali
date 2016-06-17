.class public final Lcom/wandoujia/api/proto/Tag$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "Tag.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder",
        "<",
        "Lcom/wandoujia/api/proto/Tag;",
        ">;"
    }
.end annotation


# instance fields
.field public action:Lcom/wandoujia/api/proto/Action;

.field public color:Lcom/wandoujia/api/proto/Color;

.field public icon:Lcom/wandoujia/api/proto/Image;

.field public tag_id:Ljava/lang/Integer;

.field public tag_name:Ljava/lang/String;

.field public type:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 96
    return-void
.end method

.method public constructor <init>(Lcom/wandoujia/api/proto/Tag;)V
    .locals 1
    .parameter

    .prologue
    .line 99
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message$Builder;-><init>(Lcom/squareup/wire/Message;)V

    .line 100
    if-nez p1, :cond_0

    .line 107
    :goto_0
    return-void

    .line 101
    :cond_0
    iget-object v0, p1, Lcom/wandoujia/api/proto/Tag;->tag_id:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/wandoujia/api/proto/Tag$Builder;->tag_id:Ljava/lang/Integer;

    .line 102
    iget-object v0, p1, Lcom/wandoujia/api/proto/Tag;->type:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/wandoujia/api/proto/Tag$Builder;->type:Ljava/lang/Integer;

    .line 103
    iget-object v0, p1, Lcom/wandoujia/api/proto/Tag;->tag_name:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/api/proto/Tag$Builder;->tag_name:Ljava/lang/String;

    .line 104
    iget-object v0, p1, Lcom/wandoujia/api/proto/Tag;->icon:Lcom/wandoujia/api/proto/Image;

    iput-object v0, p0, Lcom/wandoujia/api/proto/Tag$Builder;->icon:Lcom/wandoujia/api/proto/Image;

    .line 105
    iget-object v0, p1, Lcom/wandoujia/api/proto/Tag;->color:Lcom/wandoujia/api/proto/Color;

    iput-object v0, p0, Lcom/wandoujia/api/proto/Tag$Builder;->color:Lcom/wandoujia/api/proto/Color;

    .line 106
    iget-object v0, p1, Lcom/wandoujia/api/proto/Tag;->action:Lcom/wandoujia/api/proto/Action;

    iput-object v0, p0, Lcom/wandoujia/api/proto/Tag$Builder;->action:Lcom/wandoujia/api/proto/Action;

    goto :goto_0
.end method


# virtual methods
.method public final action(Lcom/wandoujia/api/proto/Action;)Lcom/wandoujia/api/proto/Tag$Builder;
    .locals 0
    .parameter

    .prologue
    .line 147
    iput-object p1, p0, Lcom/wandoujia/api/proto/Tag$Builder;->action:Lcom/wandoujia/api/proto/Action;

    .line 148
    return-object p0
.end method

.method public final bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .prologue
    .line 86
    invoke-virtual {p0}, Lcom/wandoujia/api/proto/Tag$Builder;->build()Lcom/wandoujia/api/proto/Tag;

    move-result-object v0

    return-object v0
.end method

.method public final build()Lcom/wandoujia/api/proto/Tag;
    .locals 2

    .prologue
    .line 153
    invoke-virtual {p0}, Lcom/wandoujia/api/proto/Tag$Builder;->checkRequiredFields()V

    .line 154
    new-instance v0, Lcom/wandoujia/api/proto/Tag;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/wandoujia/api/proto/Tag;-><init>(Lcom/wandoujia/api/proto/Tag$Builder;Ld;)V

    return-object v0
.end method

.method public final color(Lcom/wandoujia/api/proto/Color;)Lcom/wandoujia/api/proto/Tag$Builder;
    .locals 0
    .parameter

    .prologue
    .line 139
    iput-object p1, p0, Lcom/wandoujia/api/proto/Tag$Builder;->color:Lcom/wandoujia/api/proto/Color;

    .line 140
    return-object p0
.end method

.method public final icon(Lcom/wandoujia/api/proto/Image;)Lcom/wandoujia/api/proto/Tag$Builder;
    .locals 0
    .parameter

    .prologue
    .line 131
    iput-object p1, p0, Lcom/wandoujia/api/proto/Tag$Builder;->icon:Lcom/wandoujia/api/proto/Image;

    .line 132
    return-object p0
.end method

.method public final tag_id(Ljava/lang/Integer;)Lcom/wandoujia/api/proto/Tag$Builder;
    .locals 0
    .parameter

    .prologue
    .line 110
    iput-object p1, p0, Lcom/wandoujia/api/proto/Tag$Builder;->tag_id:Ljava/lang/Integer;

    .line 111
    return-object p0
.end method

.method public final tag_name(Ljava/lang/String;)Lcom/wandoujia/api/proto/Tag$Builder;
    .locals 0
    .parameter

    .prologue
    .line 123
    iput-object p1, p0, Lcom/wandoujia/api/proto/Tag$Builder;->tag_name:Ljava/lang/String;

    .line 124
    return-object p0
.end method

.method public final type(Ljava/lang/Integer;)Lcom/wandoujia/api/proto/Tag$Builder;
    .locals 0
    .parameter

    .prologue
    .line 115
    iput-object p1, p0, Lcom/wandoujia/api/proto/Tag$Builder;->type:Ljava/lang/Integer;

    .line 116
    return-object p0
.end method
