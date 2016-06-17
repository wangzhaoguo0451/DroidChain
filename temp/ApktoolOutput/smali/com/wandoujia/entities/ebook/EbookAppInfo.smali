.class public Lcom/wandoujia/entities/ebook/EbookAppInfo;
.super Ljava/lang/Object;
.source "EbookAppInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public componentName:Landroid/content/ComponentName;

.field private icon:Ljava/lang/String;

.field private pn:Ljava/lang/String;

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getIconUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/wandoujia/entities/ebook/EbookAppInfo;->icon:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/wandoujia/entities/ebook/EbookAppInfo;->pn:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/wandoujia/entities/ebook/EbookAppInfo;->title:Ljava/lang/String;

    return-object v0
.end method
