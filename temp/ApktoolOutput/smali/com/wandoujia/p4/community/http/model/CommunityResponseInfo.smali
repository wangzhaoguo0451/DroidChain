.class public Lcom/wandoujia/p4/community/http/model/CommunityResponseInfo;
.super Ljava/lang/Object;
.source "CommunityResponseInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final CODE_STICK_OVERFLOW:I = 0x3fb

.field public static final CODE_SUGGESS:I = 0x0

.field private static final serialVersionUID:J = -0x443091837ea378bbL


# instance fields
.field private code:I

.field private msg:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCode()I
    .locals 1

    .prologue
    .line 19
    iget v0, p0, Lcom/wandoujia/p4/community/http/model/CommunityResponseInfo;->code:I

    return v0
.end method

.method public getMsg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/wandoujia/p4/community/http/model/CommunityResponseInfo;->msg:Ljava/lang/String;

    return-object v0
.end method

.method public isDataValid()Z
    .locals 1

    .prologue
    .line 27
    iget v0, p0, Lcom/wandoujia/p4/community/http/model/CommunityResponseInfo;->code:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isStickOverflow()Z
    .locals 2

    .prologue
    .line 31
    iget v0, p0, Lcom/wandoujia/p4/community/http/model/CommunityResponseInfo;->code:I

    const/16 v1, 0x3fb

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
