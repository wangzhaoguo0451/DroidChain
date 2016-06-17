.class public Lcom/wandoujia/p4/person/model/PersonInfo$PersonCover;
.super Ljava/lang/Object;
.source "PersonInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x55d50b2f4d0cb419L


# instance fields
.field public l:Ljava/lang/String;

.field public s:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/wandoujia/p4/person/model/PersonInfo$PersonCover;->l:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/wandoujia/p4/person/model/PersonInfo$PersonCover;->l:Ljava/lang/String;

    .line 82
    :goto_0
    return-object v0

    .line 79
    :cond_0
    iget-object v0, p0, Lcom/wandoujia/p4/person/model/PersonInfo$PersonCover;->s:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 80
    iget-object v0, p0, Lcom/wandoujia/p4/person/model/PersonInfo$PersonCover;->s:Ljava/lang/String;

    goto :goto_0

    .line 82
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getS()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/wandoujia/p4/person/model/PersonInfo$PersonCover;->s:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/wandoujia/p4/person/model/PersonInfo$PersonCover;->s:Ljava/lang/String;

    .line 92
    :goto_0
    return-object v0

    .line 89
    :cond_0
    iget-object v0, p0, Lcom/wandoujia/p4/person/model/PersonInfo$PersonCover;->l:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 90
    iget-object v0, p0, Lcom/wandoujia/p4/person/model/PersonInfo$PersonCover;->l:Ljava/lang/String;

    goto :goto_0

    .line 92
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
