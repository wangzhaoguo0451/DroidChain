.class public final Lcom/wandoujia/launcher_base/view/dialog/DataPacketDialog;
.super Ljava/lang/Object;
.source "DataPacketDialog.java"


# instance fields
.field public a:Lejg;

.field public b:Lejq;

.field public c:Lejf;

.field private d:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lejf;)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/entities/app/ExtensionPack;",
            ">;",
            "Lejf;",
            ")V"
        }
    .end annotation

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object p1, p0, Lcom/wandoujia/launcher_base/view/dialog/DataPacketDialog;->d:Landroid/content/Context;

    .line 68
    iput-object p3, p0, Lcom/wandoujia/launcher_base/view/dialog/DataPacketDialog;->c:Lejf;

    .line 69
    invoke-direct {p0, p2}, Lcom/wandoujia/launcher_base/view/dialog/DataPacketDialog;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 70
    new-instance v0, Lejg;

    invoke-direct {v0, v1}, Lejg;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Lcom/wandoujia/launcher_base/view/dialog/DataPacketDialog;->a:Lejg;

    .line 71
    sget v0, Lcom/wandoujia/launcher_base/R$layout;->aa_extension_pack_list:I

    invoke-static {p1, v0}, Lehx;->a(Landroid/content/Context;I)Landroid/view/View;

    move-result-object v2

    .line 72
    sget v0, Lcom/wandoujia/launcher_base/R$id;->extension_listview:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 73
    iget-object v3, p0, Lcom/wandoujia/launcher_base/view/dialog/DataPacketDialog;->a:Lejg;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 74
    new-instance v3, Lejb;

    invoke-direct {v3, p0}, Lejb;-><init>(Lcom/wandoujia/launcher_base/view/dialog/DataPacketDialog;)V

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 81
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/wandoujia/launcher_base/view/dialog/DataPacketDialog;->a:Lejg;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lejg;->a(I)V

    .line 84
    :cond_0
    new-instance v0, Lejw;

    iget-object v1, p0, Lcom/wandoujia/launcher_base/view/dialog/DataPacketDialog;->d:Landroid/content/Context;

    invoke-direct {v0, v1}, Lejw;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/wandoujia/launcher_base/view/dialog/DataPacketDialog;->d:Landroid/content/Context;

    sget v3, Lcom/wandoujia/launcher_base/R$string;->download_extension_pack_title:I

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lejw;->a(Ljava/lang/CharSequence;)Lejw;

    invoke-virtual {v0, v2}, Lejw;->a(Landroid/view/View;)Lejw;

    sget v1, Lcom/wandoujia/launcher_base/R$string;->confirm:I

    new-instance v2, Lejc;

    invoke-direct {v2, p0}, Lejc;-><init>(Lcom/wandoujia/launcher_base/view/dialog/DataPacketDialog;)V

    invoke-virtual {v0, v1, v2}, Lejw;->a(ILandroid/content/DialogInterface$OnClickListener;)Lejw;

    sget v1, Lcom/wandoujia/launcher_base/R$string;->cancel:I

    new-instance v2, Lejd;

    invoke-direct {v2}, Lejd;-><init>()V

    invoke-virtual {v0, v1, v2}, Lejw;->b(ILandroid/content/DialogInterface$OnClickListener;)Lejw;

    invoke-virtual {v0}, Lejw;->a()Lejq;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/launcher_base/view/dialog/DataPacketDialog;->b:Lejq;

    .line 85
    return-void
.end method

.method private a(I)Ljava/lang/String;
    .locals 8
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 135
    sget-object v1, Lcom/wandoujia/launcher_base/view/dialog/DataPacketDialog$GPUType;->Common:Lcom/wandoujia/launcher_base/view/dialog/DataPacketDialog$GPUType;

    #getter for: Lcom/wandoujia/launcher_base/view/dialog/DataPacketDialog$GPUType;->assignedNum:I
    invoke-static {v1}, Lcom/wandoujia/launcher_base/view/dialog/DataPacketDialog$GPUType;->access$200(Lcom/wandoujia/launcher_base/view/dialog/DataPacketDialog$GPUType;)I

    move-result v1

    if-ne p1, v1, :cond_0

    .line 136
    iget-object v0, p0, Lcom/wandoujia/launcher_base/view/dialog/DataPacketDialog;->d:Landroid/content/Context;

    sget v1, Lcom/wandoujia/launcher_base/R$string;->common_gpu:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 174
    :goto_0
    return-object v0

    .line 137
    :cond_0
    sget-object v1, Lcom/wandoujia/launcher_base/view/dialog/DataPacketDialog$GPUType;->None:Lcom/wandoujia/launcher_base/view/dialog/DataPacketDialog$GPUType;

    #getter for: Lcom/wandoujia/launcher_base/view/dialog/DataPacketDialog$GPUType;->assignedNum:I
    invoke-static {v1}, Lcom/wandoujia/launcher_base/view/dialog/DataPacketDialog$GPUType;->access$200(Lcom/wandoujia/launcher_base/view/dialog/DataPacketDialog$GPUType;)I

    move-result v1

    if-ne p1, v1, :cond_1

    .line 138
    iget-object v0, p0, Lcom/wandoujia/launcher_base/view/dialog/DataPacketDialog;->d:Landroid/content/Context;

    sget v1, Lcom/wandoujia/launcher_base/R$string;->download_extension_from_source:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 140
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 141
    invoke-static {}, Lcom/wandoujia/launcher_base/view/dialog/DataPacketDialog$GPUType;->values()[Lcom/wandoujia/launcher_base/view/dialog/DataPacketDialog$GPUType;

    move-result-object v3

    array-length v4, v3

    move v1, v0

    :goto_1
    if-ge v1, v4, :cond_3

    aget-object v5, v3, v1

    .line 142
    invoke-virtual {v5}, Lcom/wandoujia/launcher_base/view/dialog/DataPacketDialog$GPUType;->getAssignedNum()I

    move-result v6

    and-int/2addr v6, p1

    invoke-virtual {v5}, Lcom/wandoujia/launcher_base/view/dialog/DataPacketDialog$GPUType;->getAssignedNum()I

    move-result v7

    if-ne v6, v7, :cond_2

    .line 143
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 141
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 147
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 148
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/launcher_base/view/dialog/DataPacketDialog$GPUType;

    .line 149
    if-eqz v1, :cond_4

    .line 150
    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    :cond_4
    add-int/lit8 v1, v1, 0x1

    .line 153
    sget-object v4, Leje;->a:[I

    invoke-virtual {v0}, Lcom/wandoujia/launcher_base/view/dialog/DataPacketDialog$GPUType;->ordinal()I

    move-result v0

    aget v0, v4, v0

    packed-switch v0, :pswitch_data_0

    goto :goto_2

    .line 155
    :pswitch_0
    iget-object v0, p0, Lcom/wandoujia/launcher_base/view/dialog/DataPacketDialog;->d:Landroid/content/Context;

    sget v4, Lcom/wandoujia/launcher_base/R$string;->tegra_gpu:I

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 158
    :pswitch_1
    iget-object v0, p0, Lcom/wandoujia/launcher_base/view/dialog/DataPacketDialog;->d:Landroid/content/Context;

    sget v4, Lcom/wandoujia/launcher_base/R$string;->samung_gpu:I

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 161
    :pswitch_2
    iget-object v0, p0, Lcom/wandoujia/launcher_base/view/dialog/DataPacketDialog;->d:Landroid/content/Context;

    sget v4, Lcom/wandoujia/launcher_base/R$string;->texasInstruments_gpu:I

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 164
    :pswitch_3
    iget-object v0, p0, Lcom/wandoujia/launcher_base/view/dialog/DataPacketDialog;->d:Landroid/content/Context;

    sget v4, Lcom/wandoujia/launcher_base/R$string;->qualcomm_gpu:I

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 167
    :pswitch_4
    iget-object v0, p0, Lcom/wandoujia/launcher_base/view/dialog/DataPacketDialog;->d:Landroid/content/Context;

    sget v4, Lcom/wandoujia/launcher_base/R$string;->orion_gpu:I

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 174
    :cond_5
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 153
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private a(ILjava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 128
    sget-object v0, Lcom/wandoujia/launcher_base/view/dialog/DataPacketDialog$GPUType;->None:Lcom/wandoujia/launcher_base/view/dialog/DataPacketDialog$GPUType;

    #getter for: Lcom/wandoujia/launcher_base/view/dialog/DataPacketDialog$GPUType;->assignedNum:I
    invoke-static {v0}, Lcom/wandoujia/launcher_base/view/dialog/DataPacketDialog$GPUType;->access$200(Lcom/wandoujia/launcher_base/view/dialog/DataPacketDialog$GPUType;)I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/wandoujia/launcher_base/view/dialog/DataPacketDialog;->d:Landroid/content/Context;

    sget v1, Lcom/wandoujia/launcher_base/R$string;->not_download_extension_pack:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 131
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/wandoujia/launcher_base/view/dialog/DataPacketDialog;->d:Landroid/content/Context;

    sget v1, Lcom/wandoujia/launcher_base/R$string;->download_extension_pack:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private a(Ljava/util/List;)Ljava/util/List;
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/entities/app/ExtensionPack;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lejh;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 110
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 112
    const/4 v0, 0x1

    .line 113
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/entities/app/ExtensionPack;

    .line 114
    new-instance v4, Lejh;

    invoke-virtual {v0}, Lcom/wandoujia/entities/app/ExtensionPack;->getHumansize()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v1, v5}, Lcom/wandoujia/launcher_base/view/dialog/DataPacketDialog;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lcom/wandoujia/entities/app/ExtensionPack;->getType()I

    move-result v6

    invoke-direct {p0, v6}, Lcom/wandoujia/launcher_base/view/dialog/DataPacketDialog;->a(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6, v0}, Lejh;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/wandoujia/entities/app/ExtensionPack;)V

    .line 118
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 119
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    .line 120
    goto :goto_0

    .line 121
    :cond_0
    new-instance v0, Lejh;

    sget-object v1, Lcom/wandoujia/launcher_base/view/dialog/DataPacketDialog$GPUType;->None:Lcom/wandoujia/launcher_base/view/dialog/DataPacketDialog$GPUType;

    #getter for: Lcom/wandoujia/launcher_base/view/dialog/DataPacketDialog$GPUType;->assignedNum:I
    invoke-static {v1}, Lcom/wandoujia/launcher_base/view/dialog/DataPacketDialog$GPUType;->access$200(Lcom/wandoujia/launcher_base/view/dialog/DataPacketDialog$GPUType;)I

    move-result v1

    invoke-direct {p0, v1, v7}, Lcom/wandoujia/launcher_base/view/dialog/DataPacketDialog;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/wandoujia/launcher_base/view/dialog/DataPacketDialog$GPUType;->None:Lcom/wandoujia/launcher_base/view/dialog/DataPacketDialog$GPUType;

    #getter for: Lcom/wandoujia/launcher_base/view/dialog/DataPacketDialog$GPUType;->assignedNum:I
    invoke-static {v3}, Lcom/wandoujia/launcher_base/view/dialog/DataPacketDialog$GPUType;->access$200(Lcom/wandoujia/launcher_base/view/dialog/DataPacketDialog$GPUType;)I

    move-result v3

    invoke-direct {p0, v3}, Lcom/wandoujia/launcher_base/view/dialog/DataPacketDialog;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v3, v7}, Lejh;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/wandoujia/entities/app/ExtensionPack;)V

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 124
    return-object v2
.end method
