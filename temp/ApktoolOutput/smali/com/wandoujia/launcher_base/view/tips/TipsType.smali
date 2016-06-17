.class public enum Lcom/wandoujia/launcher_base/view/tips/TipsType;
.super Ljava/lang/Enum;
.source "TipsType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/wandoujia/launcher_base/view/tips/TipsType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/wandoujia/launcher_base/view/tips/TipsType;

.field public static final enum LOADING:Lcom/wandoujia/launcher_base/view/tips/TipsType;


# instance fields
.field private layoutRes:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 15
    new-instance v0, Lcom/wandoujia/launcher_base/view/tips/TipsType$1;

    const-string v1, "LOADING"

    invoke-direct {v0, v1, v2}, Lcom/wandoujia/launcher_base/view/tips/TipsType$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/launcher_base/view/tips/TipsType;->LOADING:Lcom/wandoujia/launcher_base/view/tips/TipsType;

    .line 13
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/wandoujia/launcher_base/view/tips/TipsType;

    sget-object v1, Lcom/wandoujia/launcher_base/view/tips/TipsType;->LOADING:Lcom/wandoujia/launcher_base/view/tips/TipsType;

    aput-object v1, v0, v2

    sput-object v0, Lcom/wandoujia/launcher_base/view/tips/TipsType;->$VALUES:[Lcom/wandoujia/launcher_base/view/tips/TipsType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

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
    .line 29
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 30
    iput p3, p0, Lcom/wandoujia/launcher_base/view/tips/TipsType;->layoutRes:I

    .line 31
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/wandoujia/launcher_base/view/tips/TipsType$1;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 13
    invoke-direct {p0, p1, p2}, Lcom/wandoujia/launcher_base/view/tips/TipsType;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/wandoujia/launcher_base/view/tips/TipsType;
    .locals 1
    .parameter

    .prologue
    .line 13
    const-class v0, Lcom/wandoujia/launcher_base/view/tips/TipsType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/launcher_base/view/tips/TipsType;

    return-object v0
.end method

.method public static values()[Lcom/wandoujia/launcher_base/view/tips/TipsType;
    .locals 1

    .prologue
    .line 13
    sget-object v0, Lcom/wandoujia/launcher_base/view/tips/TipsType;->$VALUES:[Lcom/wandoujia/launcher_base/view/tips/TipsType;

    invoke-virtual {v0}, [Lcom/wandoujia/launcher_base/view/tips/TipsType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/wandoujia/launcher_base/view/tips/TipsType;

    return-object v0
.end method


# virtual methods
.method public createTips(Landroid/content/Context;)Leko;
    .locals 2
    .parameter

    .prologue
    .line 34
    new-instance v0, Leko;

    iget v1, p0, Lcom/wandoujia/launcher_base/view/tips/TipsType;->layoutRes:I

    invoke-direct {v0, p1, v1}, Leko;-><init>(Landroid/content/Context;I)V

    return-object v0
.end method
