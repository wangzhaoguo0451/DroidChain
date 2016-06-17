.class public final enum Lcom/nispok/snackbar/enums/SnackbarType;
.super Ljava/lang/Enum;
.source "SnackbarType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/nispok/snackbar/enums/SnackbarType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/nispok/snackbar/enums/SnackbarType;

.field public static final enum MULTI_LINE:Lcom/nispok/snackbar/enums/SnackbarType;

.field public static final enum SINGLE_LINE:Lcom/nispok/snackbar/enums/SnackbarType;


# instance fields
.field private maxHeight:I

.field private maxLines:I

.field private minHeight:I


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .prologue
    const/4 v11, 0x2

    const/4 v2, 0x0

    const/16 v3, 0x30

    const/4 v5, 0x1

    .line 8
    new-instance v0, Lcom/nispok/snackbar/enums/SnackbarType;

    const-string v1, "SINGLE_LINE"

    move v4, v3

    invoke-direct/range {v0 .. v5}, Lcom/nispok/snackbar/enums/SnackbarType;-><init>(Ljava/lang/String;IIII)V

    sput-object v0, Lcom/nispok/snackbar/enums/SnackbarType;->SINGLE_LINE:Lcom/nispok/snackbar/enums/SnackbarType;

    .line 12
    new-instance v6, Lcom/nispok/snackbar/enums/SnackbarType;

    const-string v7, "MULTI_LINE"

    const/16 v10, 0x50

    move v8, v5

    move v9, v3

    invoke-direct/range {v6 .. v11}, Lcom/nispok/snackbar/enums/SnackbarType;-><init>(Ljava/lang/String;IIII)V

    sput-object v6, Lcom/nispok/snackbar/enums/SnackbarType;->MULTI_LINE:Lcom/nispok/snackbar/enums/SnackbarType;

    .line 3
    new-array v0, v11, [Lcom/nispok/snackbar/enums/SnackbarType;

    sget-object v1, Lcom/nispok/snackbar/enums/SnackbarType;->SINGLE_LINE:Lcom/nispok/snackbar/enums/SnackbarType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/nispok/snackbar/enums/SnackbarType;->MULTI_LINE:Lcom/nispok/snackbar/enums/SnackbarType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/nispok/snackbar/enums/SnackbarType;->$VALUES:[Lcom/nispok/snackbar/enums/SnackbarType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIII)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III)V"
        }
    .end annotation

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 19
    iput p3, p0, Lcom/nispok/snackbar/enums/SnackbarType;->minHeight:I

    .line 20
    iput p4, p0, Lcom/nispok/snackbar/enums/SnackbarType;->maxHeight:I

    .line 21
    iput p5, p0, Lcom/nispok/snackbar/enums/SnackbarType;->maxLines:I

    .line 22
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nispok/snackbar/enums/SnackbarType;
    .locals 1
    .parameter

    .prologue
    .line 3
    const-class v0, Lcom/nispok/snackbar/enums/SnackbarType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/nispok/snackbar/enums/SnackbarType;

    return-object v0
.end method

.method public static values()[Lcom/nispok/snackbar/enums/SnackbarType;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lcom/nispok/snackbar/enums/SnackbarType;->$VALUES:[Lcom/nispok/snackbar/enums/SnackbarType;

    invoke-virtual {v0}, [Lcom/nispok/snackbar/enums/SnackbarType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nispok/snackbar/enums/SnackbarType;

    return-object v0
.end method


# virtual methods
.method public final getMaxHeight()I
    .locals 1

    .prologue
    .line 29
    iget v0, p0, Lcom/nispok/snackbar/enums/SnackbarType;->maxHeight:I

    return v0
.end method

.method public final getMaxLines()I
    .locals 1

    .prologue
    .line 33
    iget v0, p0, Lcom/nispok/snackbar/enums/SnackbarType;->maxLines:I

    return v0
.end method

.method public final getMinHeight()I
    .locals 1

    .prologue
    .line 25
    iget v0, p0, Lcom/nispok/snackbar/enums/SnackbarType;->minHeight:I

    return v0
.end method
