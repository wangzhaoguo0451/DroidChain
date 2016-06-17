.class public final Lcom/wandoujia/api/proto/AppAward$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "AppAward.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder",
        "<",
        "Lcom/wandoujia/api/proto/AppAward;",
        ">;"
    }
.end annotation


# instance fields
.field public author_desc:Ljava/lang/String;

.field public author_link:Ljava/lang/String;

.field public author_name:Ljava/lang/String;

.field public banner:Ljava/lang/String;

.field public blog_image:Ljava/lang/String;

.field public blog_link:Ljava/lang/String;

.field public blog_title:Ljava/lang/String;

.field public comment:Ljava/lang/String;

.field public cover:Ljava/lang/String;

.field public creation:Ljava/lang/Long;

.field public description:Ljava/lang/String;

.field public issue:Ljava/lang/Integer;

.field public markdown_comment:Ljava/lang/String;

.field public modification:Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 150
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 151
    return-void
.end method

.method public constructor <init>(Lcom/wandoujia/api/proto/AppAward;)V
    .locals 1
    .parameter

    .prologue
    .line 154
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message$Builder;-><init>(Lcom/squareup/wire/Message;)V

    .line 155
    if-nez p1, :cond_0

    .line 170
    :goto_0
    return-void

    .line 156
    :cond_0
    iget-object v0, p1, Lcom/wandoujia/api/proto/AppAward;->author_desc:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/api/proto/AppAward$Builder;->author_desc:Ljava/lang/String;

    .line 157
    iget-object v0, p1, Lcom/wandoujia/api/proto/AppAward;->author_link:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/api/proto/AppAward$Builder;->author_link:Ljava/lang/String;

    .line 158
    iget-object v0, p1, Lcom/wandoujia/api/proto/AppAward;->author_name:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/api/proto/AppAward$Builder;->author_name:Ljava/lang/String;

    .line 159
    iget-object v0, p1, Lcom/wandoujia/api/proto/AppAward;->banner:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/api/proto/AppAward$Builder;->banner:Ljava/lang/String;

    .line 160
    iget-object v0, p1, Lcom/wandoujia/api/proto/AppAward;->blog_image:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/api/proto/AppAward$Builder;->blog_image:Ljava/lang/String;

    .line 161
    iget-object v0, p1, Lcom/wandoujia/api/proto/AppAward;->blog_link:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/api/proto/AppAward$Builder;->blog_link:Ljava/lang/String;

    .line 162
    iget-object v0, p1, Lcom/wandoujia/api/proto/AppAward;->blog_title:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/api/proto/AppAward$Builder;->blog_title:Ljava/lang/String;

    .line 163
    iget-object v0, p1, Lcom/wandoujia/api/proto/AppAward;->comment:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/api/proto/AppAward$Builder;->comment:Ljava/lang/String;

    .line 164
    iget-object v0, p1, Lcom/wandoujia/api/proto/AppAward;->creation:Ljava/lang/Long;

    iput-object v0, p0, Lcom/wandoujia/api/proto/AppAward$Builder;->creation:Ljava/lang/Long;

    .line 165
    iget-object v0, p1, Lcom/wandoujia/api/proto/AppAward;->issue:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/wandoujia/api/proto/AppAward$Builder;->issue:Ljava/lang/Integer;

    .line 166
    iget-object v0, p1, Lcom/wandoujia/api/proto/AppAward;->markdown_comment:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/api/proto/AppAward$Builder;->markdown_comment:Ljava/lang/String;

    .line 167
    iget-object v0, p1, Lcom/wandoujia/api/proto/AppAward;->modification:Ljava/lang/Long;

    iput-object v0, p0, Lcom/wandoujia/api/proto/AppAward$Builder;->modification:Ljava/lang/Long;

    .line 168
    iget-object v0, p1, Lcom/wandoujia/api/proto/AppAward;->cover:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/api/proto/AppAward$Builder;->cover:Ljava/lang/String;

    .line 169
    iget-object v0, p1, Lcom/wandoujia/api/proto/AppAward;->description:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/api/proto/AppAward$Builder;->description:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public final author_desc(Ljava/lang/String;)Lcom/wandoujia/api/proto/AppAward$Builder;
    .locals 0
    .parameter

    .prologue
    .line 173
    iput-object p1, p0, Lcom/wandoujia/api/proto/AppAward$Builder;->author_desc:Ljava/lang/String;

    .line 174
    return-object p0
.end method

.method public final author_link(Ljava/lang/String;)Lcom/wandoujia/api/proto/AppAward$Builder;
    .locals 0
    .parameter

    .prologue
    .line 178
    iput-object p1, p0, Lcom/wandoujia/api/proto/AppAward$Builder;->author_link:Ljava/lang/String;

    .line 179
    return-object p0
.end method

.method public final author_name(Ljava/lang/String;)Lcom/wandoujia/api/proto/AppAward$Builder;
    .locals 0
    .parameter

    .prologue
    .line 183
    iput-object p1, p0, Lcom/wandoujia/api/proto/AppAward$Builder;->author_name:Ljava/lang/String;

    .line 184
    return-object p0
.end method

.method public final banner(Ljava/lang/String;)Lcom/wandoujia/api/proto/AppAward$Builder;
    .locals 0
    .parameter

    .prologue
    .line 188
    iput-object p1, p0, Lcom/wandoujia/api/proto/AppAward$Builder;->banner:Ljava/lang/String;

    .line 189
    return-object p0
.end method

.method public final blog_image(Ljava/lang/String;)Lcom/wandoujia/api/proto/AppAward$Builder;
    .locals 0
    .parameter

    .prologue
    .line 193
    iput-object p1, p0, Lcom/wandoujia/api/proto/AppAward$Builder;->blog_image:Ljava/lang/String;

    .line 194
    return-object p0
.end method

.method public final blog_link(Ljava/lang/String;)Lcom/wandoujia/api/proto/AppAward$Builder;
    .locals 0
    .parameter

    .prologue
    .line 198
    iput-object p1, p0, Lcom/wandoujia/api/proto/AppAward$Builder;->blog_link:Ljava/lang/String;

    .line 199
    return-object p0
.end method

.method public final blog_title(Ljava/lang/String;)Lcom/wandoujia/api/proto/AppAward$Builder;
    .locals 0
    .parameter

    .prologue
    .line 203
    iput-object p1, p0, Lcom/wandoujia/api/proto/AppAward$Builder;->blog_title:Ljava/lang/String;

    .line 204
    return-object p0
.end method

.method public final bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .prologue
    .line 133
    invoke-virtual {p0}, Lcom/wandoujia/api/proto/AppAward$Builder;->build()Lcom/wandoujia/api/proto/AppAward;

    move-result-object v0

    return-object v0
.end method

.method public final build()Lcom/wandoujia/api/proto/AppAward;
    .locals 2

    .prologue
    .line 244
    new-instance v0, Lcom/wandoujia/api/proto/AppAward;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/wandoujia/api/proto/AppAward;-><init>(Lcom/wandoujia/api/proto/AppAward$Builder;Ld;)V

    return-object v0
.end method

.method public final comment(Ljava/lang/String;)Lcom/wandoujia/api/proto/AppAward$Builder;
    .locals 0
    .parameter

    .prologue
    .line 208
    iput-object p1, p0, Lcom/wandoujia/api/proto/AppAward$Builder;->comment:Ljava/lang/String;

    .line 209
    return-object p0
.end method

.method public final cover(Ljava/lang/String;)Lcom/wandoujia/api/proto/AppAward$Builder;
    .locals 0
    .parameter

    .prologue
    .line 233
    iput-object p1, p0, Lcom/wandoujia/api/proto/AppAward$Builder;->cover:Ljava/lang/String;

    .line 234
    return-object p0
.end method

.method public final creation(Ljava/lang/Long;)Lcom/wandoujia/api/proto/AppAward$Builder;
    .locals 0
    .parameter

    .prologue
    .line 213
    iput-object p1, p0, Lcom/wandoujia/api/proto/AppAward$Builder;->creation:Ljava/lang/Long;

    .line 214
    return-object p0
.end method

.method public final description(Ljava/lang/String;)Lcom/wandoujia/api/proto/AppAward$Builder;
    .locals 0
    .parameter

    .prologue
    .line 238
    iput-object p1, p0, Lcom/wandoujia/api/proto/AppAward$Builder;->description:Ljava/lang/String;

    .line 239
    return-object p0
.end method

.method public final issue(Ljava/lang/Integer;)Lcom/wandoujia/api/proto/AppAward$Builder;
    .locals 0
    .parameter

    .prologue
    .line 218
    iput-object p1, p0, Lcom/wandoujia/api/proto/AppAward$Builder;->issue:Ljava/lang/Integer;

    .line 219
    return-object p0
.end method

.method public final markdown_comment(Ljava/lang/String;)Lcom/wandoujia/api/proto/AppAward$Builder;
    .locals 0
    .parameter

    .prologue
    .line 223
    iput-object p1, p0, Lcom/wandoujia/api/proto/AppAward$Builder;->markdown_comment:Ljava/lang/String;

    .line 224
    return-object p0
.end method

.method public final modification(Ljava/lang/Long;)Lcom/wandoujia/api/proto/AppAward$Builder;
    .locals 0
    .parameter

    .prologue
    .line 228
    iput-object p1, p0, Lcom/wandoujia/api/proto/AppAward$Builder;->modification:Ljava/lang/Long;

    .line 229
    return-object p0
.end method
