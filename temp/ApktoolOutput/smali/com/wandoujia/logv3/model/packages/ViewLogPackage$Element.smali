.class public final enum Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;
.super Ljava/lang/Enum;
.source "ViewLogPackage.java"

# interfaces
.implements Lcom/squareup/wire/ProtoEnum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;",
        ">;",
        "Lcom/squareup/wire/ProtoEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;

.field public static final enum BACK:Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;

.field public static final enum BUTTON:Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;

.field public static final enum CARD:Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;

.field public static final enum COVER:Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;

.field public static final enum FOOTER:Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;

.field public static final enum HEADER:Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;

.field public static final enum ICON:Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;

.field public static final enum INPUT_BOX:Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;

.field public static final enum LABEL:Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;

.field public static final enum LIST_ITEM:Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;

.field public static final enum MENU_ITEM:Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;

.field public static final enum NOTIFICATION:Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;

.field public static final enum PAGE:Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;

.field public static final enum PICTURE:Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;

.field public static final enum POPUP_BUTTON:Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;

.field public static final enum PROGRESS:Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;

.field public static final enum SLIDE:Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;

.field public static final enum SPINNER:Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;

.field public static final enum SUB_ACTION:Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;

.field public static final enum SUB_TAB:Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;

.field public static final enum TAB:Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;

.field public static final enum TEXT_LINK:Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x5

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 278
    new-instance v0, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;

    const-string v1, "BUTTON"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v4}, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;->BUTTON:Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;

    .line 282
    new-instance v0, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;

    const-string v1, "TAB"

    invoke-direct {v0, v1, v4, v5}, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;->TAB:Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;

    .line 286
    new-instance v0, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;

    const-string v1, "INPUT_BOX"

    invoke-direct {v0, v1, v5, v6}, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;->INPUT_BOX:Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;

    .line 290
    new-instance v0, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;

    const-string v1, "TEXT_LINK"

    invoke-direct {v0, v1, v6, v7}, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;->TEXT_LINK:Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;

    .line 294
    new-instance v0, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;

    const-string v1, "CARD"

    invoke-direct {v0, v1, v7, v8}, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;->CARD:Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;

    .line 298
    new-instance v0, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;

    const-string v1, "SPINNER"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v8, v2}, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;->SPINNER:Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;

    .line 302
    new-instance v0, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;

    const-string v1, "MENU_ITEM"

    const/4 v2, 0x6

    const/4 v3, 0x7

    invoke-direct {v0, v1, v2, v3}, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;->MENU_ITEM:Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;

    .line 306
    new-instance v0, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;

    const-string v1, "LIST_ITEM"

    const/4 v2, 0x7

    const/16 v3, 0x8

    invoke-direct {v0, v1, v2, v3}, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;->LIST_ITEM:Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;

    .line 310
    new-instance v0, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;

    const-string v1, "LABEL"

    const/16 v2, 0x8

    const/16 v3, 0x9

    invoke-direct {v0, v1, v2, v3}, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;->LABEL:Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;

    .line 314
    new-instance v0, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;

    const-string v1, "PROGRESS"

    const/16 v2, 0x9

    const/16 v3, 0xa

    invoke-direct {v0, v1, v2, v3}, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;->PROGRESS:Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;

    .line 318
    new-instance v0, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;

    const-string v1, "BACK"

    const/16 v2, 0xa

    const/16 v3, 0xb

    invoke-direct {v0, v1, v2, v3}, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;->BACK:Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;

    .line 322
    new-instance v0, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;

    const-string v1, "HEADER"

    const/16 v2, 0xb

    const/16 v3, 0xc

    invoke-direct {v0, v1, v2, v3}, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;->HEADER:Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;

    .line 326
    new-instance v0, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;

    const-string v1, "SUB_ACTION"

    const/16 v2, 0xc

    const/16 v3, 0xd

    invoke-direct {v0, v1, v2, v3}, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;->SUB_ACTION:Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;

    .line 330
    new-instance v0, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;

    const-string v1, "POPUP_BUTTON"

    const/16 v2, 0xd

    const/16 v3, 0xe

    invoke-direct {v0, v1, v2, v3}, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;->POPUP_BUTTON:Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;

    .line 334
    new-instance v0, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;

    const-string v1, "PAGE"

    const/16 v2, 0xe

    const/16 v3, 0xf

    invoke-direct {v0, v1, v2, v3}, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;->PAGE:Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;

    .line 338
    new-instance v0, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;

    const-string v1, "ICON"

    const/16 v2, 0xf

    const/16 v3, 0x10

    invoke-direct {v0, v1, v2, v3}, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;->ICON:Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;

    .line 342
    new-instance v0, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;

    const-string v1, "SLIDE"

    const/16 v2, 0x10

    const/16 v3, 0x11

    invoke-direct {v0, v1, v2, v3}, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;->SLIDE:Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;

    .line 346
    new-instance v0, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;

    const-string v1, "PICTURE"

    const/16 v2, 0x11

    const/16 v3, 0x12

    invoke-direct {v0, v1, v2, v3}, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;->PICTURE:Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;

    .line 350
    new-instance v0, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;

    const-string v1, "SUB_TAB"

    const/16 v2, 0x12

    const/16 v3, 0x13

    invoke-direct {v0, v1, v2, v3}, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;->SUB_TAB:Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;

    .line 354
    new-instance v0, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;

    const-string v1, "FOOTER"

    const/16 v2, 0x13

    const/16 v3, 0x14

    invoke-direct {v0, v1, v2, v3}, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;->FOOTER:Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;

    .line 358
    new-instance v0, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;

    const-string v1, "COVER"

    const/16 v2, 0x14

    const/16 v3, 0x15

    invoke-direct {v0, v1, v2, v3}, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;->COVER:Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;

    .line 362
    new-instance v0, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;

    const-string v1, "NOTIFICATION"

    const/16 v2, 0x15

    const/16 v3, 0x16

    invoke-direct {v0, v1, v2, v3}, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;->NOTIFICATION:Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;

    .line 276
    const/16 v0, 0x16

    new-array v0, v0, [Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;

    const/4 v1, 0x0

    sget-object v2, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;->BUTTON:Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;

    aput-object v2, v0, v1

    sget-object v1, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;->TAB:Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;

    aput-object v1, v0, v4

    sget-object v1, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;->INPUT_BOX:Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;

    aput-object v1, v0, v5

    sget-object v1, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;->TEXT_LINK:Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;

    aput-object v1, v0, v6

    sget-object v1, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;->CARD:Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;

    aput-object v1, v0, v7

    sget-object v1, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;->SPINNER:Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;

    aput-object v1, v0, v8

    const/4 v1, 0x6

    sget-object v2, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;->MENU_ITEM:Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;->LIST_ITEM:Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;->LABEL:Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;->PROGRESS:Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;->BACK:Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;->HEADER:Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;->SUB_ACTION:Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;->POPUP_BUTTON:Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;->PAGE:Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;->ICON:Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;->SLIDE:Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;->PICTURE:Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;->SUB_TAB:Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;->FOOTER:Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;->COVER:Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;->NOTIFICATION:Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;

    aput-object v2, v0, v1

    sput-object v0, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;->$VALUES:[Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;

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
    .line 366
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 367
    iput p3, p0, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;->value:I

    .line 368
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;
    .locals 1
    .parameter

    .prologue
    .line 276
    const-class v0, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;

    return-object v0
.end method

.method public static values()[Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;
    .locals 1

    .prologue
    .line 276
    sget-object v0, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;->$VALUES:[Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;

    invoke-virtual {v0}, [Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;

    return-object v0
.end method


# virtual methods
.method public final getValue()I
    .locals 1

    .prologue
    .line 372
    iget v0, p0, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;->value:I

    return v0
.end method
