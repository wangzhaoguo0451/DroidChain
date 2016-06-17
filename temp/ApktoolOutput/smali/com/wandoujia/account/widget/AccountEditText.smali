.class public Lcom/wandoujia/account/widget/AccountEditText;
.super Landroid/widget/EditText;
.source "AccountEditText.java"


# instance fields
.field private a:Lcom/wandoujia/account/widget/AccountEditText$ContentType;

.field private b:Lcom/wandoujia/account/widget/AccountEditText$StatusType;

.field private c:Ljava/util/Timer;

.field private d:Ljava/util/TimerTask;

.field private e:Landroid/os/Handler;

.field private final f:Landroid/text/TextWatcher;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 69
    invoke-direct {p0, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 52
    new-instance v0, Lcom;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom;-><init>(Lcom/wandoujia/account/widget/AccountEditText;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/wandoujia/account/widget/AccountEditText;->e:Landroid/os/Handler;

    .line 138
    new-instance v0, Lcon;

    invoke-direct {v0, p0}, Lcon;-><init>(Lcom/wandoujia/account/widget/AccountEditText;)V

    iput-object v0, p0, Lcom/wandoujia/account/widget/AccountEditText;->f:Landroid/text/TextWatcher;

    .line 70
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 73
    invoke-direct {p0, p1, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 52
    new-instance v0, Lcom;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom;-><init>(Lcom/wandoujia/account/widget/AccountEditText;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/wandoujia/account/widget/AccountEditText;->e:Landroid/os/Handler;

    .line 138
    new-instance v0, Lcon;

    invoke-direct {v0, p0}, Lcon;-><init>(Lcom/wandoujia/account/widget/AccountEditText;)V

    iput-object v0, p0, Lcom/wandoujia/account/widget/AccountEditText;->f:Landroid/text/TextWatcher;

    .line 74
    const/4 v0, 0x2

    new-array v0, v0, [I

    sget v1, Lcom/wandoujia/account/R$attr;->content_type:I

    aput v1, v0, v3

    sget v1, Lcom/wandoujia/account/R$attr;->status_type:I

    aput v1, v0, v4

    invoke-virtual {p1, p2, v0, v3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 76
    invoke-virtual {v0, v3, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    .line 77
    if-nez v1, :cond_0

    .line 78
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The input_type attribute is required and must define "

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 81
    :cond_0
    invoke-virtual {v0, v4, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    .line 82
    if-nez v2, :cond_1

    .line 83
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The status_type attribute is required and must define "

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 87
    :cond_1
    packed-switch v1, :pswitch_data_0

    .line 98
    :goto_0
    packed-switch v2, :pswitch_data_1

    .line 107
    :goto_1
    iget-object v1, p0, Lcom/wandoujia/account/widget/AccountEditText;->a:Lcom/wandoujia/account/widget/AccountEditText$ContentType;

    if-nez v1, :cond_2

    .line 108
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The input_type attribute is invalid "

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 89
    :pswitch_0
    sget-object v1, Lcom/wandoujia/account/widget/AccountEditText$ContentType;->TELEPHONE:Lcom/wandoujia/account/widget/AccountEditText$ContentType;

    iput-object v1, p0, Lcom/wandoujia/account/widget/AccountEditText;->a:Lcom/wandoujia/account/widget/AccountEditText$ContentType;

    goto :goto_0

    .line 92
    :pswitch_1
    sget-object v1, Lcom/wandoujia/account/widget/AccountEditText$ContentType;->EMAIL:Lcom/wandoujia/account/widget/AccountEditText$ContentType;

    iput-object v1, p0, Lcom/wandoujia/account/widget/AccountEditText;->a:Lcom/wandoujia/account/widget/AccountEditText$ContentType;

    goto :goto_0

    .line 95
    :pswitch_2
    sget-object v1, Lcom/wandoujia/account/widget/AccountEditText$ContentType;->PASSWORD:Lcom/wandoujia/account/widget/AccountEditText$ContentType;

    iput-object v1, p0, Lcom/wandoujia/account/widget/AccountEditText;->a:Lcom/wandoujia/account/widget/AccountEditText$ContentType;

    goto :goto_0

    .line 100
    :pswitch_3
    sget-object v1, Lcom/wandoujia/account/widget/AccountEditText$StatusType;->REGISTER:Lcom/wandoujia/account/widget/AccountEditText$StatusType;

    iput-object v1, p0, Lcom/wandoujia/account/widget/AccountEditText;->b:Lcom/wandoujia/account/widget/AccountEditText$StatusType;

    goto :goto_1

    .line 103
    :pswitch_4
    sget-object v1, Lcom/wandoujia/account/widget/AccountEditText$StatusType;->LOGIN:Lcom/wandoujia/account/widget/AccountEditText$StatusType;

    iput-object v1, p0, Lcom/wandoujia/account/widget/AccountEditText;->b:Lcom/wandoujia/account/widget/AccountEditText$StatusType;

    goto :goto_1

    .line 112
    :cond_2
    iget-object v1, p0, Lcom/wandoujia/account/widget/AccountEditText;->b:Lcom/wandoujia/account/widget/AccountEditText$StatusType;

    if-nez v1, :cond_3

    .line 113
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The input_type attribute is invalid "

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 116
    :cond_3
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 119
    new-array v0, v4, [Landroid/text/InputFilter;

    new-instance v1, Landroid/text/InputFilter$LengthFilter;

    const/16 v2, 0x32

    invoke-direct {v1, v2}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v1, v0, v3

    invoke-virtual {p0, v0}, Lcom/wandoujia/account/widget/AccountEditText;->setFilters([Landroid/text/InputFilter;)V

    .line 121
    invoke-direct {p0}, Lcom/wandoujia/account/widget/AccountEditText;->b()V

    .line 122
    return-void

    .line 87
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 98
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method public static synthetic a(Lcom/wandoujia/account/widget/AccountEditText;)Landroid/text/TextWatcher;
    .locals 1
    .parameter

    .prologue
    .line 27
    iget-object v0, p0, Lcom/wandoujia/account/widget/AccountEditText;->f:Landroid/text/TextWatcher;

    return-object v0
.end method

.method private a(I)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 187
    invoke-virtual {p0}, Lcom/wandoujia/account/widget/AccountEditText;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 300
    invoke-static {p1}, Ld;->u(Ljava/lang/String;)Lcom/wandoujia/account/AccountErrorType;

    move-result-object v1

    .line 301
    sget-object v2, Lcop;->b:[I

    invoke-virtual {v1}, Lcom/wandoujia/account/AccountErrorType;->ordinal()I

    move-result v1

    aget v1, v2, v1

    packed-switch v1, :pswitch_data_0

    .line 317
    :goto_0
    :pswitch_0
    return-object v0

    .line 303
    :pswitch_1
    sget v0, Lcom/wandoujia/account/R$string;->account_sdk_username_empty:I

    invoke-direct {p0, v0}, Lcom/wandoujia/account/widget/AccountEditText;->a(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 305
    :pswitch_2
    invoke-static {p1}, Ld;->t(Ljava/lang/String;)Lcom/wandoujia/account/AccountErrorType;

    move-result-object v1

    .line 306
    sget-object v2, Lcop;->b:[I

    invoke-virtual {v1}, Lcom/wandoujia/account/AccountErrorType;->ordinal()I

    move-result v1

    aget v1, v2, v1

    packed-switch v1, :pswitch_data_1

    goto :goto_0

    .line 308
    :pswitch_3
    sget v0, Lcom/wandoujia/account/R$string;->account_sdk_username_empty:I

    invoke-direct {p0, v0}, Lcom/wandoujia/account/widget/AccountEditText;->a(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 310
    :pswitch_4
    sget v0, Lcom/wandoujia/account/R$string;->account_sdk_username_invalid:I

    invoke-direct {p0, v0}, Lcom/wandoujia/account/widget/AccountEditText;->a(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 301
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch

    .line 306
    :pswitch_data_1
    .packed-switch 0x3
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static synthetic a(Lcom/wandoujia/account/widget/AccountEditText;Ljava/util/Timer;)Ljava/util/Timer;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 27
    iput-object p1, p0, Lcom/wandoujia/account/widget/AccountEditText;->c:Ljava/util/Timer;

    return-object p1
.end method

.method public static synthetic a(Lcom/wandoujia/account/widget/AccountEditText;Ljava/util/TimerTask;)Ljava/util/TimerTask;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 27
    iput-object p1, p0, Lcom/wandoujia/account/widget/AccountEditText;->d:Ljava/util/TimerTask;

    return-object p1
.end method

.method public static synthetic b(Lcom/wandoujia/account/widget/AccountEditText;)Ljava/util/Timer;
    .locals 1
    .parameter

    .prologue
    .line 27
    iget-object v0, p0, Lcom/wandoujia/account/widget/AccountEditText;->c:Ljava/util/Timer;

    return-object v0
.end method

.method private b()V
    .locals 2

    .prologue
    .line 126
    iget-object v0, p0, Lcom/wandoujia/account/widget/AccountEditText;->a:Lcom/wandoujia/account/widget/AccountEditText$ContentType;

    sget-object v1, Lcom/wandoujia/account/widget/AccountEditText$ContentType;->PASSWORD:Lcom/wandoujia/account/widget/AccountEditText$ContentType;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/wandoujia/account/widget/AccountEditText;->b:Lcom/wandoujia/account/widget/AccountEditText$StatusType;

    sget-object v1, Lcom/wandoujia/account/widget/AccountEditText$StatusType;->REGISTER:Lcom/wandoujia/account/widget/AccountEditText$StatusType;

    if-ne v0, v1, :cond_0

    .line 128
    iget-object v0, p0, Lcom/wandoujia/account/widget/AccountEditText;->f:Landroid/text/TextWatcher;

    invoke-virtual {p0, v0}, Lcom/wandoujia/account/widget/AccountEditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 129
    iget-object v0, p0, Lcom/wandoujia/account/widget/AccountEditText;->f:Landroid/text/TextWatcher;

    invoke-virtual {p0, v0}, Lcom/wandoujia/account/widget/AccountEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 131
    :cond_0
    return-void
.end method

.method public static synthetic c(Lcom/wandoujia/account/widget/AccountEditText;)Ljava/util/TimerTask;
    .locals 1
    .parameter

    .prologue
    .line 27
    iget-object v0, p0, Lcom/wandoujia/account/widget/AccountEditText;->d:Ljava/util/TimerTask;

    return-object v0
.end method

.method public static synthetic d(Lcom/wandoujia/account/widget/AccountEditText;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 27
    iget-object v0, p0, Lcom/wandoujia/account/widget/AccountEditText;->e:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 210
    iget-object v1, p0, Lcom/wandoujia/account/widget/AccountEditText;->b:Lcom/wandoujia/account/widget/AccountEditText$StatusType;

    sget-object v2, Lcom/wandoujia/account/widget/AccountEditText$StatusType;->LOGIN:Lcom/wandoujia/account/widget/AccountEditText$StatusType;

    if-ne v1, v2, :cond_1

    .line 211
    invoke-virtual {p0}, Lcom/wandoujia/account/widget/AccountEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcop;->a:[I

    iget-object v3, p0, Lcom/wandoujia/account/widget/AccountEditText;->a:Lcom/wandoujia/account/widget/AccountEditText$ContentType;

    invoke-virtual {v3}, Lcom/wandoujia/account/widget/AccountEditText$ContentType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 215
    :cond_0
    :goto_0
    :pswitch_0
    return-object v0

    .line 211
    :pswitch_1
    invoke-direct {p0, v1}, Lcom/wandoujia/account/widget/AccountEditText;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    invoke-direct {p0, v1}, Lcom/wandoujia/account/widget/AccountEditText;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_3
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget v0, Lcom/wandoujia/account/R$string;->account_sdk_password_empty:I

    invoke-direct {p0, v0}, Lcom/wandoujia/account/widget/AccountEditText;->a(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 212
    :cond_1
    iget-object v1, p0, Lcom/wandoujia/account/widget/AccountEditText;->b:Lcom/wandoujia/account/widget/AccountEditText$StatusType;

    sget-object v2, Lcom/wandoujia/account/widget/AccountEditText$StatusType;->REGISTER:Lcom/wandoujia/account/widget/AccountEditText$StatusType;

    if-ne v1, v2, :cond_0

    .line 213
    invoke-virtual {p0}, Lcom/wandoujia/account/widget/AccountEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcop;->a:[I

    iget-object v3, p0, Lcom/wandoujia/account/widget/AccountEditText;->a:Lcom/wandoujia/account/widget/AccountEditText$ContentType;

    invoke-virtual {v3}, Lcom/wandoujia/account/widget/AccountEditText$ContentType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_1

    goto :goto_0

    :pswitch_4
    invoke-static {v1}, Ld;->u(Ljava/lang/String;)Lcom/wandoujia/account/AccountErrorType;

    move-result-object v1

    sget-object v2, Lcop;->b:[I

    invoke-virtual {v1}, Lcom/wandoujia/account/AccountErrorType;->ordinal()I

    move-result v1

    aget v1, v2, v1

    packed-switch v1, :pswitch_data_2

    goto :goto_0

    :pswitch_5
    sget v0, Lcom/wandoujia/account/R$string;->account_sdk_tel_empty:I

    invoke-direct {p0, v0}, Lcom/wandoujia/account/widget/AccountEditText;->a(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_6
    sget v0, Lcom/wandoujia/account/R$string;->account_sdk_tel_invalid:I

    invoke-direct {p0, v0}, Lcom/wandoujia/account/widget/AccountEditText;->a(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_7
    invoke-static {v1}, Ld;->t(Ljava/lang/String;)Lcom/wandoujia/account/AccountErrorType;

    move-result-object v1

    sget-object v2, Lcop;->b:[I

    invoke-virtual {v1}, Lcom/wandoujia/account/AccountErrorType;->ordinal()I

    move-result v1

    aget v1, v2, v1

    packed-switch v1, :pswitch_data_3

    goto :goto_0

    :pswitch_8
    sget v0, Lcom/wandoujia/account/R$string;->account_sdk_email_empty:I

    invoke-direct {p0, v0}, Lcom/wandoujia/account/widget/AccountEditText;->a(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_9
    sget v0, Lcom/wandoujia/account/R$string;->account_sdk_email_invalid:I

    invoke-direct {p0, v0}, Lcom/wandoujia/account/widget/AccountEditText;->a(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_a
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v1, Lcom/wandoujia/account/AccountErrorType;->PASSWORD_EMPTY:Lcom/wandoujia/account/AccountErrorType;

    :goto_1
    sget-object v2, Lcop;->b:[I

    invoke-virtual {v1}, Lcom/wandoujia/account/AccountErrorType;->ordinal()I

    move-result v1

    aget v1, v2, v1

    packed-switch v1, :pswitch_data_4

    :pswitch_b
    goto/16 :goto_0

    :pswitch_c
    sget v0, Lcom/wandoujia/account/R$string;->account_sdk_password_empty:I

    invoke-direct {p0, v0}, Lcom/wandoujia/account/widget/AccountEditText;->a(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_2
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x8

    if-ge v2, v3, :cond_3

    sget-object v1, Lcom/wandoujia/account/AccountErrorType;->PASSWORD_TOO_SHORT:Lcom/wandoujia/account/AccountErrorType;

    goto :goto_1

    :cond_3
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x32

    if-le v2, v3, :cond_4

    sget-object v1, Lcom/wandoujia/account/AccountErrorType;->PASSWORD_TOO_LONG:Lcom/wandoujia/account/AccountErrorType;

    goto :goto_1

    :cond_4
    invoke-static {v1}, Ld;->w(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    sget-object v1, Lcom/wandoujia/account/AccountErrorType;->PASSWORD_INVALID:Lcom/wandoujia/account/AccountErrorType;

    goto :goto_1

    :cond_5
    sget-object v1, Lcom/wandoujia/account/AccountErrorType;->OK:Lcom/wandoujia/account/AccountErrorType;

    goto :goto_1

    :pswitch_d
    sget v0, Lcom/wandoujia/account/R$string;->account_sdk_password_least_length:I

    invoke-direct {p0, v0}, Lcom/wandoujia/account/widget/AccountEditText;->a(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_e
    sget v0, Lcom/wandoujia/account/R$string;->account_sdk_password_too_long:I

    invoke-direct {p0, v0}, Lcom/wandoujia/account/widget/AccountEditText;->a(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_f
    sget v0, Lcom/wandoujia/account/R$string;->account_sdk_password_invalid:I

    invoke-direct {p0, v0}, Lcom/wandoujia/account/widget/AccountEditText;->a(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 211
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 213
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_7
        :pswitch_a
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_5
        :pswitch_6
        :pswitch_0
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x3
        :pswitch_0
        :pswitch_8
        :pswitch_9
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x3
        :pswitch_0
        :pswitch_b
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
    .end packed-switch
.end method

.method public setContentType(Lcom/wandoujia/account/widget/AccountEditText$ContentType;)V
    .locals 0
    .parameter

    .prologue
    .line 196
    iput-object p1, p0, Lcom/wandoujia/account/widget/AccountEditText;->a:Lcom/wandoujia/account/widget/AccountEditText$ContentType;

    .line 197
    invoke-direct {p0}, Lcom/wandoujia/account/widget/AccountEditText;->b()V

    .line 198
    return-void
.end method

.method public setPassWordTextChangeListener$16808738(Ldd;)V
    .locals 0
    .parameter

    .prologue
    .line 201
    return-void
.end method

.method public setStatusType(Lcom/wandoujia/account/widget/AccountEditText$StatusType;)V
    .locals 0
    .parameter

    .prologue
    .line 191
    iput-object p1, p0, Lcom/wandoujia/account/widget/AccountEditText;->b:Lcom/wandoujia/account/widget/AccountEditText$StatusType;

    .line 192
    invoke-direct {p0}, Lcom/wandoujia/account/widget/AccountEditText;->b()V

    .line 193
    return-void
.end method
