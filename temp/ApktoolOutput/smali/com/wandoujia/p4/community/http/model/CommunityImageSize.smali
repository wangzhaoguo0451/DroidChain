.class public Lcom/wandoujia/p4/community/http/model/CommunityImageSize;
.super Ljava/lang/Object;
.source "CommunityImageSize.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x4c038de6d0cd9ecfL


# instance fields
.field private m:I

.field private s:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getM()I
    .locals 1

    .prologue
    .line 22
    iget v0, p0, Lcom/wandoujia/p4/community/http/model/CommunityImageSize;->m:I

    return v0
.end method

.method public getS()I
    .locals 1

    .prologue
    .line 18
    iget v0, p0, Lcom/wandoujia/p4/community/http/model/CommunityImageSize;->s:I

    return v0
.end method
