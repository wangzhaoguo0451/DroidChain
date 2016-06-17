.class public Lcom/wandoujia/p4/pay/model/ZendeskModels$Comment;
.super Ljava/lang/Object;
.source "ZendeskModels.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private author_id:J

.field private body:Ljava/lang/String;

.field private created_at:Ljava/util/Date;

.field private id:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 221
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAuthor_id()J
    .locals 2

    .prologue
    .line 244
    iget-wide v0, p0, Lcom/wandoujia/p4/pay/model/ZendeskModels$Comment;->author_id:J

    return-wide v0
.end method

.method public getBody()Ljava/lang/String;
    .locals 1

    .prologue
    .line 236
    iget-object v0, p0, Lcom/wandoujia/p4/pay/model/ZendeskModels$Comment;->body:Ljava/lang/String;

    return-object v0
.end method

.method public getCreated_at()Ljava/util/Date;
    .locals 1

    .prologue
    .line 252
    iget-object v0, p0, Lcom/wandoujia/p4/pay/model/ZendeskModels$Comment;->created_at:Ljava/util/Date;

    return-object v0
.end method

.method public getId()J
    .locals 2

    .prologue
    .line 228
    iget-wide v0, p0, Lcom/wandoujia/p4/pay/model/ZendeskModels$Comment;->id:J

    return-wide v0
.end method

.method public setAuthor_id(J)V
    .locals 1
    .parameter

    .prologue
    .line 248
    iput-wide p1, p0, Lcom/wandoujia/p4/pay/model/ZendeskModels$Comment;->author_id:J

    .line 249
    return-void
.end method

.method public setBody(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 240
    iput-object p1, p0, Lcom/wandoujia/p4/pay/model/ZendeskModels$Comment;->body:Ljava/lang/String;

    .line 241
    return-void
.end method

.method public setCreated_at(Ljava/util/Date;)V
    .locals 0
    .parameter

    .prologue
    .line 256
    iput-object p1, p0, Lcom/wandoujia/p4/pay/model/ZendeskModels$Comment;->created_at:Ljava/util/Date;

    .line 257
    return-void
.end method

.method public setId(J)V
    .locals 1
    .parameter

    .prologue
    .line 232
    iput-wide p1, p0, Lcom/wandoujia/p4/pay/model/ZendeskModels$Comment;->id:J

    .line 233
    return-void
.end method
