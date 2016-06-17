.class public Lcom/wandoujia/entities/app/AwardLiteInfo;
.super Ljava/lang/Object;
.source "AwardLiteInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private blogTitle:Ljava/lang/String;

.field private issue:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBlogTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/wandoujia/entities/app/AwardLiteInfo;->blogTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getIssue()I
    .locals 1

    .prologue
    .line 11
    iget v0, p0, Lcom/wandoujia/entities/app/AwardLiteInfo;->issue:I

    return v0
.end method
