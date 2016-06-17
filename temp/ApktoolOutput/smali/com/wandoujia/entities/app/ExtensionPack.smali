.class public Lcom/wandoujia/entities/app/ExtensionPack;
.super Ljava/lang/Object;
.source "ExtensionPack.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private filepath:Ljava/lang/String;

.field private humansize:Ljava/lang/String;

.field private pf5:Ljava/lang/String;

.field private size:J

.field private type:I

.field private url:Ljava/lang/String;

.field private versionCode:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getFilepath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/wandoujia/entities/app/ExtensionPack;->filepath:Ljava/lang/String;

    return-object v0
.end method

.method public getHumansize()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/wandoujia/entities/app/ExtensionPack;->humansize:Ljava/lang/String;

    return-object v0
.end method

.method public getPf5()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/wandoujia/entities/app/ExtensionPack;->pf5:Ljava/lang/String;

    return-object v0
.end method

.method public getSize()J
    .locals 2

    .prologue
    .line 33
    iget-wide v0, p0, Lcom/wandoujia/entities/app/ExtensionPack;->size:J

    return-wide v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 37
    iget v0, p0, Lcom/wandoujia/entities/app/ExtensionPack;->type:I

    return v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/wandoujia/entities/app/ExtensionPack;->url:Ljava/lang/String;

    return-object v0
.end method

.method public getVersionCode()I
    .locals 1

    .prologue
    .line 45
    iget v0, p0, Lcom/wandoujia/entities/app/ExtensionPack;->versionCode:I

    return v0
.end method
