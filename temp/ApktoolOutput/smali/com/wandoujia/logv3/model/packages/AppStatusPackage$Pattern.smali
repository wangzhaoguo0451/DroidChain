.class public final enum Lcom/wandoujia/logv3/model/packages/AppStatusPackage$Pattern;
.super Ljava/lang/Enum;
.source "AppStatusPackage.java"

# interfaces
.implements Lcom/squareup/wire/ProtoEnum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/wandoujia/logv3/model/packages/AppStatusPackage$Pattern;",
        ">;",
        "Lcom/squareup/wire/ProtoEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/wandoujia/logv3/model/packages/AppStatusPackage$Pattern;

.field public static final enum AUTO:Lcom/wandoujia/logv3/model/packages/AppStatusPackage$Pattern;

.field public static final enum MANUAL:Lcom/wandoujia/logv3/model/packages/AppStatusPackage$Pattern;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 159
    new-instance v0, Lcom/wandoujia/logv3/model/packages/AppStatusPackage$Pattern;

    const-string v1, "AUTO"

    invoke-direct {v0, v1, v2, v2}, Lcom/wandoujia/logv3/model/packages/AppStatusPackage$Pattern;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wandoujia/logv3/model/packages/AppStatusPackage$Pattern;->AUTO:Lcom/wandoujia/logv3/model/packages/AppStatusPackage$Pattern;

    .line 160
    new-instance v0, Lcom/wandoujia/logv3/model/packages/AppStatusPackage$Pattern;

    const-string v1, "MANUAL"

    invoke-direct {v0, v1, v3, v3}, Lcom/wandoujia/logv3/model/packages/AppStatusPackage$Pattern;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wandoujia/logv3/model/packages/AppStatusPackage$Pattern;->MANUAL:Lcom/wandoujia/logv3/model/packages/AppStatusPackage$Pattern;

    .line 157
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/wandoujia/logv3/model/packages/AppStatusPackage$Pattern;

    sget-object v1, Lcom/wandoujia/logv3/model/packages/AppStatusPackage$Pattern;->AUTO:Lcom/wandoujia/logv3/model/packages/AppStatusPackage$Pattern;

    aput-object v1, v0, v2

    sget-object v1, Lcom/wandoujia/logv3/model/packages/AppStatusPackage$Pattern;->MANUAL:Lcom/wandoujia/logv3/model/packages/AppStatusPackage$Pattern;

    aput-object v1, v0, v3

    sput-object v0, Lcom/wandoujia/logv3/model/packages/AppStatusPackage$Pattern;->$VALUES:[Lcom/wandoujia/logv3/model/packages/AppStatusPackage$Pattern;

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
    .line 164
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 165
    iput p3, p0, Lcom/wandoujia/logv3/model/packages/AppStatusPackage$Pattern;->value:I

    .line 166
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/wandoujia/logv3/model/packages/AppStatusPackage$Pattern;
    .locals 1
    .parameter

    .prologue
    .line 157
    const-class v0, Lcom/wandoujia/logv3/model/packages/AppStatusPackage$Pattern;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/logv3/model/packages/AppStatusPackage$Pattern;

    return-object v0
.end method

.method public static values()[Lcom/wandoujia/logv3/model/packages/AppStatusPackage$Pattern;
    .locals 1

    .prologue
    .line 157
    sget-object v0, Lcom/wandoujia/logv3/model/packages/AppStatusPackage$Pattern;->$VALUES:[Lcom/wandoujia/logv3/model/packages/AppStatusPackage$Pattern;

    invoke-virtual {v0}, [Lcom/wandoujia/logv3/model/packages/AppStatusPackage$Pattern;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/wandoujia/logv3/model/packages/AppStatusPackage$Pattern;

    return-object v0
.end method


# virtual methods
.method public final getValue()I
    .locals 1

    .prologue
    .line 170
    iget v0, p0, Lcom/wandoujia/logv3/model/packages/AppStatusPackage$Pattern;->value:I

    return v0
.end method
