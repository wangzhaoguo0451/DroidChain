.class public final enum Lcom/wandoujia/p4/multimedia/MultimediaType;
.super Ljava/lang/Enum;
.source "MultimediaType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/wandoujia/p4/multimedia/MultimediaType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/wandoujia/p4/multimedia/MultimediaType;

.field public static final enum EBOOK:Lcom/wandoujia/p4/multimedia/MultimediaType;

.field public static final enum MUSIC:Lcom/wandoujia/p4/multimedia/MultimediaType;

.field public static final enum VIDEO:Lcom/wandoujia/p4/multimedia/MultimediaType;

.field public static final enum WALLPAPER:Lcom/wandoujia/p4/multimedia/MultimediaType;


# instance fields
.field private nameResourceId:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 10
    new-instance v0, Lcom/wandoujia/p4/multimedia/MultimediaType;

    const-string v1, "VIDEO"

    const v2, 0x7f0e05f7

    invoke-direct {v0, v1, v3, v2}, Lcom/wandoujia/p4/multimedia/MultimediaType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wandoujia/p4/multimedia/MultimediaType;->VIDEO:Lcom/wandoujia/p4/multimedia/MultimediaType;

    .line 11
    new-instance v0, Lcom/wandoujia/p4/multimedia/MultimediaType;

    const-string v1, "EBOOK"

    const v2, 0x7f0e05f0

    invoke-direct {v0, v1, v4, v2}, Lcom/wandoujia/p4/multimedia/MultimediaType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wandoujia/p4/multimedia/MultimediaType;->EBOOK:Lcom/wandoujia/p4/multimedia/MultimediaType;

    .line 12
    new-instance v0, Lcom/wandoujia/p4/multimedia/MultimediaType;

    const-string v1, "WALLPAPER"

    const v2, 0x7f0e05f8

    invoke-direct {v0, v1, v5, v2}, Lcom/wandoujia/p4/multimedia/MultimediaType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wandoujia/p4/multimedia/MultimediaType;->WALLPAPER:Lcom/wandoujia/p4/multimedia/MultimediaType;

    .line 13
    new-instance v0, Lcom/wandoujia/p4/multimedia/MultimediaType;

    const-string v1, "MUSIC"

    const v2, 0x7f0e05f3

    invoke-direct {v0, v1, v6, v2}, Lcom/wandoujia/p4/multimedia/MultimediaType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wandoujia/p4/multimedia/MultimediaType;->MUSIC:Lcom/wandoujia/p4/multimedia/MultimediaType;

    .line 9
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/wandoujia/p4/multimedia/MultimediaType;

    sget-object v1, Lcom/wandoujia/p4/multimedia/MultimediaType;->VIDEO:Lcom/wandoujia/p4/multimedia/MultimediaType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/wandoujia/p4/multimedia/MultimediaType;->EBOOK:Lcom/wandoujia/p4/multimedia/MultimediaType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/wandoujia/p4/multimedia/MultimediaType;->WALLPAPER:Lcom/wandoujia/p4/multimedia/MultimediaType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/wandoujia/p4/multimedia/MultimediaType;->MUSIC:Lcom/wandoujia/p4/multimedia/MultimediaType;

    aput-object v1, v0, v6

    sput-object v0, Lcom/wandoujia/p4/multimedia/MultimediaType;->$VALUES:[Lcom/wandoujia/p4/multimedia/MultimediaType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 18
    iput p3, p0, Lcom/wandoujia/p4/multimedia/MultimediaType;->nameResourceId:I

    .line 19
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/wandoujia/p4/multimedia/MultimediaType;
    .locals 1
    .parameter

    .prologue
    .line 9
    const-class v0, Lcom/wandoujia/p4/multimedia/MultimediaType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/multimedia/MultimediaType;

    return-object v0
.end method

.method public static values()[Lcom/wandoujia/p4/multimedia/MultimediaType;
    .locals 1

    .prologue
    .line 9
    sget-object v0, Lcom/wandoujia/p4/multimedia/MultimediaType;->$VALUES:[Lcom/wandoujia/p4/multimedia/MultimediaType;

    invoke-virtual {v0}, [Lcom/wandoujia/p4/multimedia/MultimediaType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/wandoujia/p4/multimedia/MultimediaType;

    return-object v0
.end method


# virtual methods
.method public final getNameResourceId()I
    .locals 1

    .prologue
    .line 22
    iget v0, p0, Lcom/wandoujia/p4/multimedia/MultimediaType;->nameResourceId:I

    return v0
.end method
