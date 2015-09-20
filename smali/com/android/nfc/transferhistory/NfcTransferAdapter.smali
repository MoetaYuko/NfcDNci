.class public Lcom/android/nfc/transferhistory/NfcTransferAdapter;
.super Landroid/widget/ArrayAdapter;
.source "NfcTransferAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/nfc/transferhistory/NfcTransferAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mLayout:I

.field private mNfcTransferInfoArrayList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/nfc/transferhistory/NfcTransferInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/util/ArrayList;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "layout"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/nfc/transferhistory/NfcTransferInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 37
    .local p3, "c":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/nfc/transferhistory/NfcTransferInfo;>;"
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 38
    iput-object p1, p0, Lcom/android/nfc/transferhistory/NfcTransferAdapter;->mContext:Landroid/content/Context;

    .line 39
    iput-object p3, p0, Lcom/android/nfc/transferhistory/NfcTransferAdapter;->mNfcTransferInfoArrayList:Ljava/util/ArrayList;

    .line 40
    iput p2, p0, Lcom/android/nfc/transferhistory/NfcTransferAdapter;->mLayout:I

    .line 41
    return-void
.end method


# virtual methods
.method public getCount()I
    .registers 2

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/nfc/transferhistory/NfcTransferAdapter;->mNfcTransferInfoArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3
    .param p1, "position"    # I

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/nfc/transferhistory/NfcTransferAdapter;->mNfcTransferInfoArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 26
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 59
    const/16 v18, 0x0

    .line 60
    .local v18, "viewHolder":Lcom/android/nfc/transferhistory/NfcTransferAdapter$ViewHolder;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/transferhistory/NfcTransferAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    .line 61
    .local v10, "r":Landroid/content/res/Resources;
    if-nez p2, :cond_14c

    .line 62
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object v19

    const-string v20, "layout_inflater"

    invoke-virtual/range {v19 .. v20}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/LayoutInflater;

    .line 64
    .local v7, "layoutInflater":Landroid/view/LayoutInflater;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/nfc/transferhistory/NfcTransferAdapter;->mLayout:I

    move/from16 v19, v0

    const/16 v20, 0x0

    move/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v7, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 66
    new-instance v18, Lcom/android/nfc/transferhistory/NfcTransferAdapter$ViewHolder;

    .end local v18    # "viewHolder":Lcom/android/nfc/transferhistory/NfcTransferAdapter$ViewHolder;
    invoke-direct/range {v18 .. v18}, Lcom/android/nfc/transferhistory/NfcTransferAdapter$ViewHolder;-><init>()V

    .line 67
    .restart local v18    # "viewHolder":Lcom/android/nfc/transferhistory/NfcTransferAdapter$ViewHolder;
    const v19, 0x7f090005

    move-object/from16 v0, p2

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/ImageView;

    invoke-static/range {v18 .. v19}, Lcom/android/nfc/transferhistory/NfcTransferAdapter$ViewHolder;->access$002(Lcom/android/nfc/transferhistory/NfcTransferAdapter$ViewHolder;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    .line 69
    const v19, 0x7f090006

    move-object/from16 v0, p2

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/TextView;

    invoke-static/range {v18 .. v19}, Lcom/android/nfc/transferhistory/NfcTransferAdapter$ViewHolder;->access$102(Lcom/android/nfc/transferhistory/NfcTransferAdapter$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 71
    const v19, 0x7f090007

    move-object/from16 v0, p2

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/TextView;

    invoke-static/range {v18 .. v19}, Lcom/android/nfc/transferhistory/NfcTransferAdapter$ViewHolder;->access$202(Lcom/android/nfc/transferhistory/NfcTransferAdapter$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 73
    const v19, 0x7f090008

    move-object/from16 v0, p2

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/TextView;

    invoke-static/range {v18 .. v19}, Lcom/android/nfc/transferhistory/NfcTransferAdapter$ViewHolder;->access$302(Lcom/android/nfc/transferhistory/NfcTransferAdapter$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 75
    const v19, 0x7f090009

    move-object/from16 v0, p2

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/TextView;

    invoke-static/range {v18 .. v19}, Lcom/android/nfc/transferhistory/NfcTransferAdapter$ViewHolder;->access$402(Lcom/android/nfc/transferhistory/NfcTransferAdapter$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 77
    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 82
    .end local v7    # "layoutInflater":Landroid/view/LayoutInflater;
    :goto_86
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/transferhistory/NfcTransferAdapter;->mNfcTransferInfoArrayList:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/nfc/transferhistory/NfcTransferInfo;

    .line 85
    .local v9, "mNfcTransferInfoMember":Lcom/android/nfc/transferhistory/NfcTransferInfo;
    invoke-virtual {v9}, Lcom/android/nfc/transferhistory/NfcTransferInfo;->getTransferResult()I

    move-result v11

    .line 86
    .local v11, "status":I
    invoke-virtual {v9}, Lcom/android/nfc/transferhistory/NfcTransferInfo;->getTransferDir()I

    move-result v6

    .line 87
    .local v6, "dir":I
    const v19, 0x7f07002e

    move/from16 v0, v19

    invoke-virtual {v10, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 88
    .local v8, "mErrorTip":Ljava/lang/String;
    const/16 v19, 0x2

    invoke-virtual {v9}, Lcom/android/nfc/transferhistory/NfcTransferInfo;->getFailedReason()I

    move-result v20

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_154

    .line 89
    const v19, 0x7f070035

    move/from16 v0, v19

    invoke-virtual {v10, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 94
    :cond_bc
    :goto_bc
    invoke-static {v11}, Lcom/android/nfc/transferhistory/HwBeamStore;->isStatusError(I)Z

    move-result v19

    if-eqz v19, :cond_16b

    .line 95
    invoke-static/range {v18 .. v18}, Lcom/android/nfc/transferhistory/NfcTransferAdapter$ViewHolder;->access$000(Lcom/android/nfc/transferhistory/NfcTransferAdapter$ViewHolder;)Landroid/widget/ImageView;

    move-result-object v19

    const v20, 0x7f020005

    invoke-virtual/range {v19 .. v20}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 107
    :goto_cc
    invoke-virtual {v9}, Lcom/android/nfc/transferhistory/NfcTransferInfo;->getFileName()Ljava/lang/String;

    move-result-object v15

    .line 109
    .local v15, "title":Ljava/lang/String;
    if-eqz v15, :cond_dc

    const-string v19, ""

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_e5

    .line 110
    :cond_dc
    const v19, 0x7f07002c

    move/from16 v0, v19

    invoke-virtual {v10, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 112
    :cond_e5
    invoke-static/range {v18 .. v18}, Lcom/android/nfc/transferhistory/NfcTransferAdapter$ViewHolder;->access$100(Lcom/android/nfc/transferhistory/NfcTransferAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 115
    invoke-virtual {v9}, Lcom/android/nfc/transferhistory/NfcTransferInfo;->getFriendlyName()Ljava/lang/String;

    move-result-object v5

    .line 117
    .local v5, "deviceName":Ljava/lang/String;
    if-eqz v5, :cond_fe

    const-string v19, ""

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_107

    .line 118
    :cond_fe
    const v19, 0x7f07002d

    move/from16 v0, v19

    invoke-virtual {v10, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 120
    :cond_107
    invoke-static/range {v18 .. v18}, Lcom/android/nfc/transferhistory/NfcTransferAdapter$ViewHolder;->access$200(Lcom/android/nfc/transferhistory/NfcTransferAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 123
    invoke-virtual {v9}, Lcom/android/nfc/transferhistory/NfcTransferInfo;->getFileSize()J

    move-result-wide v16

    .line 125
    .local v16, "totalBytes":J
    invoke-static {v11}, Lcom/android/nfc/transferhistory/HwBeamStore;->isStatusError(I)Z

    move-result v19

    if-eqz v19, :cond_189

    .line 126
    invoke-static/range {v18 .. v18}, Lcom/android/nfc/transferhistory/NfcTransferAdapter$ViewHolder;->access$400(Lcom/android/nfc/transferhistory/NfcTransferAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 139
    :goto_123
    invoke-virtual {v9}, Lcom/android/nfc/transferhistory/NfcTransferInfo;->getCompleteTime()J

    move-result-wide v13

    .line 140
    .local v13, "time":J
    new-instance v4, Ljava/util/Date;

    invoke-direct {v4, v13, v14}, Ljava/util/Date;-><init>(J)V

    .line 141
    .local v4, "d":Ljava/util/Date;
    invoke-static {v13, v14}, Landroid/text/format/DateUtils;->isToday(J)Z

    move-result v19

    if-eqz v19, :cond_1bb

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/transferhistory/NfcTransferAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v12

    .line 143
    .local v12, "str":Ljava/lang/CharSequence;
    :goto_142
    invoke-static/range {v18 .. v18}, Lcom/android/nfc/transferhistory/NfcTransferAdapter$ViewHolder;->access$300(Lcom/android/nfc/transferhistory/NfcTransferAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 146
    return-object p2

    .line 79
    .end local v4    # "d":Ljava/util/Date;
    .end local v5    # "deviceName":Ljava/lang/String;
    .end local v6    # "dir":I
    .end local v8    # "mErrorTip":Ljava/lang/String;
    .end local v9    # "mNfcTransferInfoMember":Lcom/android/nfc/transferhistory/NfcTransferInfo;
    .end local v11    # "status":I
    .end local v12    # "str":Ljava/lang/CharSequence;
    .end local v13    # "time":J
    .end local v15    # "title":Ljava/lang/String;
    .end local v16    # "totalBytes":J
    :cond_14c
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v18

    .end local v18    # "viewHolder":Lcom/android/nfc/transferhistory/NfcTransferAdapter$ViewHolder;
    check-cast v18, Lcom/android/nfc/transferhistory/NfcTransferAdapter$ViewHolder;

    .restart local v18    # "viewHolder":Lcom/android/nfc/transferhistory/NfcTransferAdapter$ViewHolder;
    goto/16 :goto_86

    .line 90
    .restart local v6    # "dir":I
    .restart local v8    # "mErrorTip":Ljava/lang/String;
    .restart local v9    # "mNfcTransferInfoMember":Lcom/android/nfc/transferhistory/NfcTransferInfo;
    .restart local v11    # "status":I
    :cond_154
    const/16 v19, 0x1

    invoke-virtual {v9}, Lcom/android/nfc/transferhistory/NfcTransferInfo;->getFailedReason()I

    move-result v20

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_bc

    .line 91
    const v19, 0x7f070034

    move/from16 v0, v19

    invoke-virtual {v10, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_bc

    .line 97
    :cond_16b
    const/16 v19, 0x2

    move/from16 v0, v19

    if-ne v6, v0, :cond_17d

    .line 98
    invoke-static/range {v18 .. v18}, Lcom/android/nfc/transferhistory/NfcTransferAdapter$ViewHolder;->access$000(Lcom/android/nfc/transferhistory/NfcTransferAdapter$ViewHolder;)Landroid/widget/ImageView;

    move-result-object v19

    const v20, 0x7f020007

    invoke-virtual/range {v19 .. v20}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_cc

    .line 101
    :cond_17d
    invoke-static/range {v18 .. v18}, Lcom/android/nfc/transferhistory/NfcTransferAdapter$ViewHolder;->access$000(Lcom/android/nfc/transferhistory/NfcTransferAdapter$ViewHolder;)Landroid/widget/ImageView;

    move-result-object v19

    const v20, 0x7f020006

    invoke-virtual/range {v19 .. v20}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_cc

    .line 128
    .restart local v5    # "deviceName":Ljava/lang/String;
    .restart local v15    # "title":Ljava/lang/String;
    .restart local v16    # "totalBytes":J
    :cond_189
    const/16 v19, 0x1

    move/from16 v0, v19

    if-ne v6, v0, :cond_1a8

    .line 129
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/transferhistory/NfcTransferAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-wide/from16 v1, v16

    invoke-static {v0, v1, v2}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v3

    .line 130
    .local v3, "completeText":Ljava/lang/String;
    invoke-static/range {v18 .. v18}, Lcom/android/nfc/transferhistory/NfcTransferAdapter$ViewHolder;->access$400(Lcom/android/nfc/transferhistory/NfcTransferAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_123

    .line 132
    .end local v3    # "completeText":Ljava/lang/String;
    :cond_1a8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/transferhistory/NfcTransferAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    const-string v20, "not incoming file"

    const/16 v21, 0x1

    invoke-static/range {v19 .. v21}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/widget/Toast;->show()V

    goto/16 :goto_123

    .line 141
    .restart local v4    # "d":Ljava/util/Date;
    .restart local v13    # "time":J
    :cond_1bb
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/transferhistory/NfcTransferAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_142
.end method
