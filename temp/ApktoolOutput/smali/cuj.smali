.class public final Lcuj;
.super Landroid/app/Dialog;
.source "GamePacketAlertDialog.java"

# interfaces
.implements Landroid/content/DialogInterface;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/Button;

.field private e:Landroid/widget/Button;

.field private f:Landroid/widget/FrameLayout;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x1

    .line 31
    sget v0, Lcom/wandoujia/gamepacket/R$style;->GamePacketDialog:I

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 33
    instance-of v0, p1, Landroid/app/Activity;

    if-nez v0, :cond_1

    .line 34
    instance-of v0, p1, Landroid/view/ContextThemeWrapper;

    if-eqz v0, :cond_1

    move-object v0, p1

    .line 36
    check-cast v0, Landroid/view/ContextThemeWrapper;

    .line 37
    invoke-virtual {v0}, Landroid/view/ContextThemeWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    instance-of v1, v1, Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 38
    invoke-virtual {v0}, Landroid/view/ContextThemeWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcuj;->a:Landroid/content/Context;

    .line 45
    :goto_0
    sget v0, Lcom/wandoujia/gamepacket/R$layout;->game_packet_dialog:I

    invoke-virtual {p0, v0}, Lcuj;->setContentView(I)V

    .line 47
    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v1}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    invoke-virtual {p0}, Lcuj;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    iget-object v0, p0, Lcuj;->a:Landroid/content/Context;

    invoke-static {v0}, Lcuj;->a(Landroid/content/Context;)Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getWidth()I

    move-result v2

    invoke-static {v0}, Lcuj;->a(Landroid/content/Context;)Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Display;->getHeight()I

    move-result v3

    if-le v2, v3, :cond_2

    invoke-static {v0}, Lcuj;->a(Landroid/content/Context;)Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    mul-int/lit8 v0, v0, 0x5a

    div-int/lit8 v0, v0, 0x64

    :goto_1
    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    invoke-virtual {p0}, Lcuj;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    invoke-virtual {p0, v4}, Lcuj;->setCancelable(Z)V

    invoke-virtual {p0, v4}, Lcuj;->setCanceledOnTouchOutside(Z)V

    .line 48
    sget v0, Lcom/wandoujia/gamepacket/R$id;->dialog_title:I

    invoke-virtual {p0, v0}, Lcuj;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcuj;->b:Landroid/widget/TextView;

    sget v0, Lcom/wandoujia/gamepacket/R$id;->dialog_message:I

    invoke-virtual {p0, v0}, Lcuj;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcuj;->c:Landroid/widget/TextView;

    sget v0, Lcom/wandoujia/gamepacket/R$id;->dialog_negativeButton:I

    invoke-virtual {p0, v0}, Lcuj;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcuj;->d:Landroid/widget/Button;

    sget v0, Lcom/wandoujia/gamepacket/R$id;->dialog_positiveButton:I

    invoke-virtual {p0, v0}, Lcuj;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcuj;->e:Landroid/widget/Button;

    sget v0, Lcom/wandoujia/gamepacket/R$id;->dialog_custom:I

    invoke-virtual {p0, v0}, Lcuj;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcuj;->f:Landroid/widget/FrameLayout;

    .line 49
    return-void

    .line 40
    :cond_0
    iput-object p1, p0, Lcuj;->a:Landroid/content/Context;

    goto :goto_0

    .line 43
    :cond_1
    iput-object p1, p0, Lcuj;->a:Landroid/content/Context;

    goto :goto_0

    .line 47
    :cond_2
    invoke-static {v0}, Lcuj;->a(Landroid/content/Context;)Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    mul-int/lit8 v0, v0, 0x5a

    div-int/lit8 v0, v0, 0x64

    goto :goto_1
.end method

.method synthetic constructor <init>(Landroid/content/Context;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcuj;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private static a(Landroid/content/Context;)Landroid/view/Display;
    .locals 1
    .parameter

    .prologue
    .line 70
    check-cast p0, Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcuj;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 21
    iget-object v0, p0, Lcuj;->b:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic b(Lcuj;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 21
    iget-object v0, p0, Lcuj;->c:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic c(Lcuj;)Landroid/widget/Button;
    .locals 1
    .parameter

    .prologue
    .line 21
    iget-object v0, p0, Lcuj;->e:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic d(Lcuj;)Landroid/widget/Button;
    .locals 1
    .parameter

    .prologue
    .line 21
    iget-object v0, p0, Lcuj;->d:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic e(Lcuj;)Landroid/widget/FrameLayout;
    .locals 1
    .parameter

    .prologue
    .line 21
    iget-object v0, p0, Lcuj;->f:Landroid/widget/FrameLayout;

    return-object v0
.end method
