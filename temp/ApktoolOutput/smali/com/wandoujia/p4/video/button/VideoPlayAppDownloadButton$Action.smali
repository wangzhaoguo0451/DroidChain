.class public abstract enum Lcom/wandoujia/p4/video/button/VideoPlayAppDownloadButton$Action;
.super Ljava/lang/Enum;
.source "VideoPlayAppDownloadButton.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/wandoujia/p4/video/button/VideoPlayAppDownloadButton$Action;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/wandoujia/p4/video/button/VideoPlayAppDownloadButton$Action;

.field public static final enum CANCEL:Lcom/wandoujia/p4/video/button/VideoPlayAppDownloadButton$Action;

.field public static final enum DOWNLOAD_INSTALL:Lcom/wandoujia/p4/video/button/VideoPlayAppDownloadButton$Action;

.field public static final enum INSTALL:Lcom/wandoujia/p4/video/button/VideoPlayAppDownloadButton$Action;

.field public static final enum INSTALLING:Lcom/wandoujia/p4/video/button/VideoPlayAppDownloadButton$Action;

.field public static final enum OPEN:Lcom/wandoujia/p4/video/button/VideoPlayAppDownloadButton$Action;

.field public static final enum PLAY:Lcom/wandoujia/p4/video/button/VideoPlayAppDownloadButton$Action;

.field public static final enum RETRY:Lcom/wandoujia/p4/video/button/VideoPlayAppDownloadButton$Action;


# instance fields
.field private final enabled:Z

.field private final textResId:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 45
    new-instance v0, Lcom/wandoujia/p4/video/button/VideoPlayAppDownloadButton$Action$1;

    const-string v1, "INSTALL"

    const v2, 0x7f0e0385

    invoke-direct {v0, v1, v4, v2}, Lcom/wandoujia/p4/video/button/VideoPlayAppDownloadButton$Action$1;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wandoujia/p4/video/button/VideoPlayAppDownloadButton$Action;->INSTALL:Lcom/wandoujia/p4/video/button/VideoPlayAppDownloadButton$Action;

    .line 57
    new-instance v0, Lcom/wandoujia/p4/video/button/VideoPlayAppDownloadButton$Action$2;

    const-string v1, "CANCEL"

    const v2, 0x7f0e0162

    invoke-direct {v0, v1, v5, v2}, Lcom/wandoujia/p4/video/button/VideoPlayAppDownloadButton$Action$2;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wandoujia/p4/video/button/VideoPlayAppDownloadButton$Action;->CANCEL:Lcom/wandoujia/p4/video/button/VideoPlayAppDownloadButton$Action;

    .line 66
    new-instance v0, Lcom/wandoujia/p4/video/button/VideoPlayAppDownloadButton$Action$3;

    const-string v1, "RETRY"

    const v2, 0x7f0e0516

    invoke-direct {v0, v1, v6, v2}, Lcom/wandoujia/p4/video/button/VideoPlayAppDownloadButton$Action$3;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wandoujia/p4/video/button/VideoPlayAppDownloadButton$Action;->RETRY:Lcom/wandoujia/p4/video/button/VideoPlayAppDownloadButton$Action;

    .line 76
    new-instance v0, Lcom/wandoujia/p4/video/button/VideoPlayAppDownloadButton$Action$4;

    const-string v1, "PLAY"

    const v2, 0x7f0e04d2

    invoke-direct {v0, v1, v7, v2}, Lcom/wandoujia/p4/video/button/VideoPlayAppDownloadButton$Action$4;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wandoujia/p4/video/button/VideoPlayAppDownloadButton$Action;->PLAY:Lcom/wandoujia/p4/video/button/VideoPlayAppDownloadButton$Action;

    .line 98
    new-instance v0, Lcom/wandoujia/p4/video/button/VideoPlayAppDownloadButton$Action$5;

    const-string v1, "OPEN"

    const v2, 0x7f0e047a

    invoke-direct {v0, v1, v8, v2}, Lcom/wandoujia/p4/video/button/VideoPlayAppDownloadButton$Action$5;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wandoujia/p4/video/button/VideoPlayAppDownloadButton$Action;->OPEN:Lcom/wandoujia/p4/video/button/VideoPlayAppDownloadButton$Action;

    .line 114
    new-instance v0, Lcom/wandoujia/p4/video/button/VideoPlayAppDownloadButton$Action$6;

    const-string v1, "INSTALLING"

    const/4 v2, 0x5

    const v3, 0x7f0e0395

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/wandoujia/p4/video/button/VideoPlayAppDownloadButton$Action$6;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/wandoujia/p4/video/button/VideoPlayAppDownloadButton$Action;->INSTALLING:Lcom/wandoujia/p4/video/button/VideoPlayAppDownloadButton$Action;

    .line 118
    new-instance v0, Lcom/wandoujia/p4/video/button/VideoPlayAppDownloadButton$Action$7;

    const-string v1, "DOWNLOAD_INSTALL"

    const/4 v2, 0x6

    const v3, 0x7f0e0385

    invoke-direct {v0, v1, v2, v3}, Lcom/wandoujia/p4/video/button/VideoPlayAppDownloadButton$Action$7;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wandoujia/p4/video/button/VideoPlayAppDownloadButton$Action;->DOWNLOAD_INSTALL:Lcom/wandoujia/p4/video/button/VideoPlayAppDownloadButton$Action;

    .line 44
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/wandoujia/p4/video/button/VideoPlayAppDownloadButton$Action;

    sget-object v1, Lcom/wandoujia/p4/video/button/VideoPlayAppDownloadButton$Action;->INSTALL:Lcom/wandoujia/p4/video/button/VideoPlayAppDownloadButton$Action;

    aput-object v1, v0, v4

    sget-object v1, Lcom/wandoujia/p4/video/button/VideoPlayAppDownloadButton$Action;->CANCEL:Lcom/wandoujia/p4/video/button/VideoPlayAppDownloadButton$Action;

    aput-object v1, v0, v5

    sget-object v1, Lcom/wandoujia/p4/video/button/VideoPlayAppDownloadButton$Action;->RETRY:Lcom/wandoujia/p4/video/button/VideoPlayAppDownloadButton$Action;

    aput-object v1, v0, v6

    sget-object v1, Lcom/wandoujia/p4/video/button/VideoPlayAppDownloadButton$Action;->PLAY:Lcom/wandoujia/p4/video/button/VideoPlayAppDownloadButton$Action;

    aput-object v1, v0, v7

    sget-object v1, Lcom/wandoujia/p4/video/button/VideoPlayAppDownloadButton$Action;->OPEN:Lcom/wandoujia/p4/video/button/VideoPlayAppDownloadButton$Action;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/wandoujia/p4/video/button/VideoPlayAppDownloadButton$Action;->INSTALLING:Lcom/wandoujia/p4/video/button/VideoPlayAppDownloadButton$Action;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/wandoujia/p4/video/button/VideoPlayAppDownloadButton$Action;->DOWNLOAD_INSTALL:Lcom/wandoujia/p4/video/button/VideoPlayAppDownloadButton$Action;

    aput-object v2, v0, v1

    sput-object v0, Lcom/wandoujia/p4/video/button/VideoPlayAppDownloadButton$Action;->$VALUES:[Lcom/wandoujia/p4/video/button/VideoPlayAppDownloadButton$Action;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 157
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/wandoujia/p4/video/button/VideoPlayAppDownloadButton$Action;-><init>(Ljava/lang/String;IIZ)V

    .line 158
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;IILgea;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 44
    invoke-direct {p0, p1, p2, p3}, Lcom/wandoujia/p4/video/button/VideoPlayAppDownloadButton$Action;-><init>(Ljava/lang/String;II)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIZ)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)V"
        }
    .end annotation

    .prologue
    .line 160
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 161
    iput p3, p0, Lcom/wandoujia/p4/video/button/VideoPlayAppDownloadButton$Action;->textResId:I

    .line 162
    iput-boolean p4, p0, Lcom/wandoujia/p4/video/button/VideoPlayAppDownloadButton$Action;->enabled:Z

    .line 163
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;IIZLgea;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 44
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/wandoujia/p4/video/button/VideoPlayAppDownloadButton$Action;-><init>(Ljava/lang/String;IIZ)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/wandoujia/p4/video/button/VideoPlayAppDownloadButton$Action;
    .locals 1
    .parameter

    .prologue
    .line 44
    const-class v0, Lcom/wandoujia/p4/video/button/VideoPlayAppDownloadButton$Action;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/video/button/VideoPlayAppDownloadButton$Action;

    return-object v0
.end method

.method public static values()[Lcom/wandoujia/p4/video/button/VideoPlayAppDownloadButton$Action;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lcom/wandoujia/p4/video/button/VideoPlayAppDownloadButton$Action;->$VALUES:[Lcom/wandoujia/p4/video/button/VideoPlayAppDownloadButton$Action;

    invoke-virtual {v0}, [Lcom/wandoujia/p4/video/button/VideoPlayAppDownloadButton$Action;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/wandoujia/p4/video/button/VideoPlayAppDownloadButton$Action;

    return-object v0
.end method


# virtual methods
.method protected apply(Lcom/wandoujia/p4/video/button/VideoPlayAppDownloadButton;)V
    .locals 1
    .parameter

    .prologue
    .line 166
    iget v0, p0, Lcom/wandoujia/p4/video/button/VideoPlayAppDownloadButton$Action;->textResId:I

    invoke-virtual {p1, v0}, Lcom/wandoujia/p4/video/button/VideoPlayAppDownloadButton;->setText(I)V

    .line 167
    iget-boolean v0, p0, Lcom/wandoujia/p4/video/button/VideoPlayAppDownloadButton$Action;->enabled:Z

    invoke-virtual {p1, v0}, Lcom/wandoujia/p4/video/button/VideoPlayAppDownloadButton;->setEnabled(Z)V

    .line 168
    return-void
.end method

.method protected abstract onClick(Lcom/wandoujia/p4/video/button/VideoPlayAppDownloadButton;)V
.end method
