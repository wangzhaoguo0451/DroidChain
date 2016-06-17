.class public final Lcet;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field private a:Z

.field private b:I

.field private c:Z

.field private synthetic d:Lcom/unionpay/mpay/widgets/s;


# direct methods
.method public constructor <init>(Lcom/unionpay/mpay/widgets/s;)V
    .locals 1

    iput-object p1, p0, Lcet;->d:Lcom/unionpay/mpay/widgets/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcet;->a:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcet;->c:Z

    return-void
.end method

.method private a(Ljava/lang/CharSequence;I)Ljava/lang/String;
    .locals 8

    const/4 v0, 0x0

    const/16 v7, 0x20

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_3

    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    if-eq v4, v7, :cond_0

    add-int/lit8 v0, v0, 0x1

    if-eqz v1, :cond_0

    and-int/lit8 v5, v0, 0x3

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    invoke-virtual {v3, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_0
    if-ne v1, p2, :cond_1

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->length()I

    move-result v5

    iput v5, p0, Lcet;->b:I

    :cond_1
    if-eq v4, v7, :cond_2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    if-ne p2, v2, :cond_4

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    iput v0, p0, Lcet;->b:I

    :cond_4
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 3

    const/4 v2, 0x1

    if-ne p3, v2, :cond_0

    if-nez p4, :cond_0

    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    iput-boolean v2, p0, Lcet;->c:Z

    :cond_0
    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 4

    const/16 v1, 0x17

    const/4 v3, 0x0

    iget-boolean v0, p0, Lcet;->a:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-boolean v0, p0, Lcet;->c:Z

    if-eqz v0, :cond_3

    add-int/lit8 v0, p2, -0x1

    invoke-interface {p1, v3, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge p2, v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-interface {p1, p2, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    add-int/lit8 p2, p2, -0x1

    iput-boolean v3, p0, Lcet;->c:Z

    :goto_1
    iput-boolean v3, p0, Lcet;->a:Z

    add-int v2, p2, p4

    invoke-direct {p0, v0, v2}, Lcet;->a(Ljava/lang/CharSequence;I)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcet;->d:Lcom/unionpay/mpay/widgets/s;

    iget-object v2, v2, Lcom/unionpay/mpay/widgets/s;->m:Lcom/unionpay/mpay/widgets/h;

    invoke-virtual {v2, v0}, Lcom/unionpay/mpay/widgets/h;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcet;->d:Lcom/unionpay/mpay/widgets/s;

    iget-object v2, v0, Lcom/unionpay/mpay/widgets/s;->m:Lcom/unionpay/mpay/widgets/h;

    iget v0, p0, Lcet;->b:I

    if-gt v0, v1, :cond_2

    iget v0, p0, Lcet;->b:I

    :goto_2
    invoke-virtual {v2, v0}, Lcom/unionpay/mpay/widgets/h;->b(I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcet;->a:Z

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_2

    :cond_3
    move-object v0, p1

    goto :goto_1
.end method
