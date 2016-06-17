.class public final Lcom/wandoujia/api/proto/CommentJson$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "CommentJson.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder",
        "<",
        "Lcom/wandoujia/api/proto/CommentJson;",
        ">;"
    }
.end annotation


# instance fields
.field public agree:Ljava/lang/Boolean;

.field public agreeCount:Ljava/lang/Integer;

.field public authorId:Ljava/lang/String;

.field public authorName:Ljava/lang/String;

.field public avatar:Ljava/lang/String;

.field public content:Ljava/lang/String;

.field public date:Ljava/lang/String;

.field public enjoy:Ljava/lang/Boolean;

.field public hot:Ljava/lang/Boolean;

.field public id:Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 128
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 129
    return-void
.end method

.method public constructor <init>(Lcom/wandoujia/api/proto/CommentJson;)V
    .locals 1
    .parameter

    .prologue
    .line 132
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message$Builder;-><init>(Lcom/squareup/wire/Message;)V

    .line 133
    if-nez p1, :cond_0

    .line 144
    :goto_0
    return-void

    .line 134
    :cond_0
    iget-object v0, p1, Lcom/wandoujia/api/proto/CommentJson;->id:Ljava/lang/Long;

    iput-object v0, p0, Lcom/wandoujia/api/proto/CommentJson$Builder;->id:Ljava/lang/Long;

    .line 135
    iget-object v0, p1, Lcom/wandoujia/api/proto/CommentJson;->authorId:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/api/proto/CommentJson$Builder;->authorId:Ljava/lang/String;

    .line 136
    iget-object v0, p1, Lcom/wandoujia/api/proto/CommentJson;->authorName:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/api/proto/CommentJson$Builder;->authorName:Ljava/lang/String;

    .line 137
    iget-object v0, p1, Lcom/wandoujia/api/proto/CommentJson;->avatar:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/api/proto/CommentJson$Builder;->avatar:Ljava/lang/String;

    .line 138
    iget-object v0, p1, Lcom/wandoujia/api/proto/CommentJson;->enjoy:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/wandoujia/api/proto/CommentJson$Builder;->enjoy:Ljava/lang/Boolean;

    .line 139
    iget-object v0, p1, Lcom/wandoujia/api/proto/CommentJson;->date:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/api/proto/CommentJson$Builder;->date:Ljava/lang/String;

    .line 140
    iget-object v0, p1, Lcom/wandoujia/api/proto/CommentJson;->content:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/api/proto/CommentJson$Builder;->content:Ljava/lang/String;

    .line 141
    iget-object v0, p1, Lcom/wandoujia/api/proto/CommentJson;->agree:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/wandoujia/api/proto/CommentJson$Builder;->agree:Ljava/lang/Boolean;

    .line 142
    iget-object v0, p1, Lcom/wandoujia/api/proto/CommentJson;->agreeCount:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/wandoujia/api/proto/CommentJson$Builder;->agreeCount:Ljava/lang/Integer;

    .line 143
    iget-object v0, p1, Lcom/wandoujia/api/proto/CommentJson;->hot:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/wandoujia/api/proto/CommentJson$Builder;->hot:Ljava/lang/Boolean;

    goto :goto_0
.end method


# virtual methods
.method public final agree(Ljava/lang/Boolean;)Lcom/wandoujia/api/proto/CommentJson$Builder;
    .locals 0
    .parameter

    .prologue
    .line 188
    iput-object p1, p0, Lcom/wandoujia/api/proto/CommentJson$Builder;->agree:Ljava/lang/Boolean;

    .line 189
    return-object p0
.end method

.method public final agreeCount(Ljava/lang/Integer;)Lcom/wandoujia/api/proto/CommentJson$Builder;
    .locals 0
    .parameter

    .prologue
    .line 196
    iput-object p1, p0, Lcom/wandoujia/api/proto/CommentJson$Builder;->agreeCount:Ljava/lang/Integer;

    .line 197
    return-object p0
.end method

.method public final authorId(Ljava/lang/String;)Lcom/wandoujia/api/proto/CommentJson$Builder;
    .locals 0
    .parameter

    .prologue
    .line 152
    iput-object p1, p0, Lcom/wandoujia/api/proto/CommentJson$Builder;->authorId:Ljava/lang/String;

    .line 153
    return-object p0
.end method

.method public final authorName(Ljava/lang/String;)Lcom/wandoujia/api/proto/CommentJson$Builder;
    .locals 0
    .parameter

    .prologue
    .line 157
    iput-object p1, p0, Lcom/wandoujia/api/proto/CommentJson$Builder;->authorName:Ljava/lang/String;

    .line 158
    return-object p0
.end method

.method public final avatar(Ljava/lang/String;)Lcom/wandoujia/api/proto/CommentJson$Builder;
    .locals 0
    .parameter

    .prologue
    .line 162
    iput-object p1, p0, Lcom/wandoujia/api/proto/CommentJson$Builder;->avatar:Ljava/lang/String;

    .line 163
    return-object p0
.end method

.method public final bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .prologue
    .line 115
    invoke-virtual {p0}, Lcom/wandoujia/api/proto/CommentJson$Builder;->build()Lcom/wandoujia/api/proto/CommentJson;

    move-result-object v0

    return-object v0
.end method

.method public final build()Lcom/wandoujia/api/proto/CommentJson;
    .locals 2

    .prologue
    .line 207
    new-instance v0, Lcom/wandoujia/api/proto/CommentJson;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/wandoujia/api/proto/CommentJson;-><init>(Lcom/wandoujia/api/proto/CommentJson$Builder;Ld;)V

    return-object v0
.end method

.method public final content(Ljava/lang/String;)Lcom/wandoujia/api/proto/CommentJson$Builder;
    .locals 0
    .parameter

    .prologue
    .line 180
    iput-object p1, p0, Lcom/wandoujia/api/proto/CommentJson$Builder;->content:Ljava/lang/String;

    .line 181
    return-object p0
.end method

.method public final date(Ljava/lang/String;)Lcom/wandoujia/api/proto/CommentJson$Builder;
    .locals 0
    .parameter

    .prologue
    .line 175
    iput-object p1, p0, Lcom/wandoujia/api/proto/CommentJson$Builder;->date:Ljava/lang/String;

    .line 176
    return-object p0
.end method

.method public final enjoy(Ljava/lang/Boolean;)Lcom/wandoujia/api/proto/CommentJson$Builder;
    .locals 0
    .parameter

    .prologue
    .line 170
    iput-object p1, p0, Lcom/wandoujia/api/proto/CommentJson$Builder;->enjoy:Ljava/lang/Boolean;

    .line 171
    return-object p0
.end method

.method public final hot(Ljava/lang/Boolean;)Lcom/wandoujia/api/proto/CommentJson$Builder;
    .locals 0
    .parameter

    .prologue
    .line 201
    iput-object p1, p0, Lcom/wandoujia/api/proto/CommentJson$Builder;->hot:Ljava/lang/Boolean;

    .line 202
    return-object p0
.end method

.method public final id(Ljava/lang/Long;)Lcom/wandoujia/api/proto/CommentJson$Builder;
    .locals 0
    .parameter

    .prologue
    .line 147
    iput-object p1, p0, Lcom/wandoujia/api/proto/CommentJson$Builder;->id:Ljava/lang/Long;

    .line 148
    return-object p0
.end method
