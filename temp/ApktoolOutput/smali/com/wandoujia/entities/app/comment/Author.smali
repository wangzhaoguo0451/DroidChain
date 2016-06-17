.class public Lcom/wandoujia/entities/app/comment/Author;
.super Ljava/lang/Object;
.source "Author.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private avatar:Ljava/lang/String;

.field private id:J

.field private name:Ljava/lang/String;

.field private phoneicon:Ljava/lang/String;

.field private phonename:Ljava/lang/String;

.field private verified:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAvatar()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/wandoujia/entities/app/comment/Author;->avatar:Ljava/lang/String;

    return-object v0
.end method

.method public getId()J
    .locals 2

    .prologue
    .line 16
    iget-wide v0, p0, Lcom/wandoujia/entities/app/comment/Author;->id:J

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/wandoujia/entities/app/comment/Author;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPhoneicon()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/wandoujia/entities/app/comment/Author;->phoneicon:Ljava/lang/String;

    return-object v0
.end method

.method public getPhonename()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/wandoujia/entities/app/comment/Author;->phonename:Ljava/lang/String;

    return-object v0
.end method

.method public isVerified()Z
    .locals 1

    .prologue
    .line 28
    iget-boolean v0, p0, Lcom/wandoujia/entities/app/comment/Author;->verified:Z

    return v0
.end method
