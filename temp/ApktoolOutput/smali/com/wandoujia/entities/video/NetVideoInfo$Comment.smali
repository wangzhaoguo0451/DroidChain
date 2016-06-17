.class public Lcom/wandoujia/entities/video/NetVideoInfo$Comment;
.super Ljava/lang/Object;
.source "NetVideoInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x24bae6580f7dc467L


# instance fields
.field public author:Ljava/lang/String;

.field public comment:Ljava/lang/String;

.field public date:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 327
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAuthor()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 335
    iget-object v0, p0, Lcom/wandoujia/entities/video/NetVideoInfo$Comment;->author:Ljava/lang/String;

    return-object v0
.end method

.method public getComment()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 340
    iget-object v0, p0, Lcom/wandoujia/entities/video/NetVideoInfo$Comment;->comment:Ljava/lang/String;

    return-object v0
.end method

.method public getDate()J
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 345
    iget-wide v0, p0, Lcom/wandoujia/entities/video/NetVideoInfo$Comment;->date:J

    return-wide v0
.end method
